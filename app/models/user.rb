class User < ApplicationRecord
  attr_accessor :remember_token
  has_many :tours, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one :pay
  has_many :bookings
  ratyrate_rater
  has_many :tours, through: :bookings
  enum sex: %i(Male Female)
  before_save :downcase_email
  validates :name, presence: true,
    length: {maximum: Settings.user.name.maximum}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  PHONE_ERROR = /\d/
  validates :email, presence: true,
    length: {maximum: Settings.user.email.maximum},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :password, presence: true,
    length: {minimum: Settings.user.password.minimum}, allow_nil: true
  has_secure_password
  validates :phone, presence: true, format: {with: PHONE_ERROR}
  validates :address, presence: true

  class << self
    def digest string
      if ActiveModel::SecurePassword.min_cost
        cost = BCrypt::Engine::MIN_COST
      else
        cost = BCrypt::Engine.cost
      end
      BCrypt::Password.create string, cost: cost
    end

    def new_token
      SecureRandom.urlsafe_base64
    end
  end

  def remember
    self.remember_token = User.new_token
    update_attributes remember_digest: User.digest(remember_token)
  end

  def authenticate? remember_token
    return false unless remember_digest.present?
    BCrypt::Password.new(remember_digest).is_password? remember_token
  end

  def forget
    update_attributes remember_digest: nil
  end

  def current_user? current_user
    self == current_user
  end

  private

  def downcase_email
    email.downcase!
  end
end

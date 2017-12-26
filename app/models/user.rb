class User < ApplicationRecord
  attr_accessor :remember_token
  has_many :tours, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one :pay
  has_many :tours, through: :bookings
  enum sex: %i(Male Female)
  enum role: %i(Admin Business User)
  before_save :downcase_email
  validates :name, presence: true,
    length: {maximum: Settings.user.name.maximum}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
    length: {maximum: Settings.user.email.maximum},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :password, presence: true,
    length: {minimum: Settings.user.password.minimum}, allow_nil: true
  has_secure_password
  validates :phone, presence: true
  validates :address, presence: true

  def User.digest string
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create string, cost: cost
  end

  def User.new_token
    SecureRandom.urlsafe_base64
  end

  def remember
    self.remember_token = User.new_token
    update_attribute :remember_token, User.digest(remember_token)
  end

  def authenticate? remember_token
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password? remember_token
  end

  def forget
    update_attribute :remember_digest, nil
  end

  private

  def downcase_email
    email.downcase!
  end
end

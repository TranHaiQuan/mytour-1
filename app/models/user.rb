class User < ApplicationRecord
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
    length: {minimum: Settings.user.password.minimum}
  has_secure_password
  validates :phone, presence: true
  validates :address, presence: true

  private

  def downcase_email
    email.downcase!
  end
end

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  has_many :tours, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one :pay
  has_many :tours, through: :bookings
  enum sex: %i(Male Female)
  validates :phone, presence: true
  validates :address, presence: true
  validates :name, presence: true,
    length: {maximum: Settings.user.name.maximum}
end

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews
  has_one :pay
  has_many :tours, through: :bookings
  enum sex: %i(Male Female)
  validates :phone, presence: true
  validates :address, presence: true
  validates :name, presence: true,
    length: {maximum: Settings.user.name.maximum}
  scope :list_admin, -> {where admin: true}
  scope :list_user, -> {where admin: false}
end

class User < ApplicationRecord
  has_many :tours, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one :pay
  has_many :tours, through: :bookings
  enum sex: [:male, :female]
  enum role: [:admin, :business, :user]
end

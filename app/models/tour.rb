class Tour < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :users, through: :bookings
  has_one :sevice_attach, dependent: :destroy
  has_one :stipulate, dependent: :destroy
  has_one :plan, dependent: :destroy
end

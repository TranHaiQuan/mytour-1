class Tour < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :users, through: :bookings
  has_one :sevice_attach, dependent: :destroy
  has_one :stipulate, dependent: :destroy
  has_one :plan, dependent: :destroy
  scope :all_tour, -> {select(:id, :tour_code, :tour_name, :description,:destination,
    :number_day, :number_night, :pick_up, :price, :rate_avg)}
end

class Tour < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :users, through: :bookings
  has_one :sevice_attach, dependent: :destroy
  has_one :stipulate, dependent: :destroy
  has_one :plan, dependent: :destroy
  belongs_to :user
  ratyrate_rateable "quality"
  scope :infotour, ->{select :id, :user_id, :tour_name, :pick_up, :number_day,
    :number_night, :price, :destination, :tour_code, :image}
end

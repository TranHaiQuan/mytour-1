class Tour < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_one :sevice_attach, dependent: :destroy
  has_one :stipulate, dependent: :destroy
  has_one :plan
  validates :tour_name, presence: true
  accepts_nested_attributes_for :plan, allow_destroy: true
  accepts_nested_attributes_for :sevice_attach, allow_destroy: true
  accepts_nested_attributes_for :stipulate, allow_destroy: true
  scope :all_tour, -> {select :id, :user_id, :tour_name, :tour_code, :destination,
      :number_day, :number_night, :departure_date, :return_date, :pickup_place,
      :price, :rate_avg, :created_by, :image}
  # mount_uploader :image, ImageUploader
  ratyrate_rateable "quality"
  scope :infotour, ->{select :id, :user_id, :tour_name, :pick_up, :number_day,
    :number_night, :price, :destination, :tour_code, :image}
end

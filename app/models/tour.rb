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
  scope :all_tour, -> {select(:id, :user_id, :tour_name, :tour_code, :destination,
      :number_day, :number_night, :departure_date, :return_date, :pickup_place,
      :price, :rate_avg, :created_by, :image_title, :image_small)}
  mount_uploader :image_title, ImageUploader
  mount_uploader :image_small, ImageUploader
end

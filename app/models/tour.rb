class Tour < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :users, through: :bookings
  has_one :sevice_attach, dependent: :destroy
  has_one :stipulate, dependent: :destroy
  has_one :plan, dependent: :destroy
  belongs_to :user
  scope :search, ->q{where "destination LIKE '%#{q}%'"}
  scope :order_by_des, ->{order id: :desc}
  scope :infotour, ->{select(:id, :tour_name, :pick_up, :number_day,
    :number_night, :price, :destination, :image)}
  scope :distin, ->{select "distinct destination"}
end

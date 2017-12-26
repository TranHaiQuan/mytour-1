class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tour
  has_one :pay
  enum status: %i(Unchecked Approved Declined Done).freeze
end

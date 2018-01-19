class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tour
  enum status: %i(Unchecked Approved Declined Done)
  scope :list_booking, ->(user_id){where user_id: user_id}
end

class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tour
  scope :list_booking, ->(user_id){where user_id: user_id}
  enum status: %i(Unchecked Approved Declined Done).freeze
end

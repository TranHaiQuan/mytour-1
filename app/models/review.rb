class Review < ApplicationRecord
  belongs_to :tour
  belongs_to :user
  validates :user_id, presence: true
  validates :comment, presence: true, length: {maximum: Settings.user.comment}
  scope :searches, ->q{where(tour_id: q).order created_at: :desc}
end

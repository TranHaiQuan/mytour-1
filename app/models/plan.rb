class Plan < ApplicationRecord
  belongs_to :tour
  validates :description, presence: true
end

class Plan < ApplicationRecord
  belongs_to :tour
  has_many :images, dependent: :destroy
end

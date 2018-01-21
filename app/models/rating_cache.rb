class RatingCache < ActiveRecord::Base
  belongs_to :cacheable, polymorphic: true
  scope :connect_tour, ->{select( 'avg', 'tours.id', 'tours.tour_name', 'tours.image', 'tours.destination', 'tours.number_night', 'tours.number_day', 'tours.price').joins('LEFT JOIN tours on tours.id = rating_caches.cacheable_id')}
  scope :toprates, lambda {order('avg DESC').limit 5}
end

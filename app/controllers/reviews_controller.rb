class ReviewsController < ApplicationController
  def show; end

  def create
    @reviews = current_user.reviews.build(review_params)
    if @reviews.save
      redirect_to mytour_path(id: @reviews.tour_id)
    end
  end

  def edit; end

  private

  def review_params
    params.require(:review).permit :comment, :tour_id
  end
end

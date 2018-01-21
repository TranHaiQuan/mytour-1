class ReviewsController < ApplicationController
  def show; end

  def create
    @review = Review.new review_params
    if @review.save
      flash.now[:sucess] = t "success"
      @comments = Review.searches(@review.tour_id).page(params[:page]).per Settings.paginate.comment_page
    else
      flash.now[:error] = t "notfound"
    end
  end

  def edit; end

  def destroy
    @review = Review.find_by id: params[:id]
    @review.destroy
    redirect_to mytour_path @reviews.tour_id
    flash[:success] = "Micropost deleted"
  end

  private

  def review_params
    params.require(:review).permit :comment, :tour_id, :user_id
  end
end

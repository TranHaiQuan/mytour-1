class MytoursController < ApplicationController
  def home; end

  def index
    @search = Tour.infotour.ransack params[:q]
    @search.sorts = %w(destination price) if @search.sorts.empty?
    @tours = @search.result.order(:id).page(params[:page]).per Settings.paginate.per_page
    @toptours = RatingCache.connect_tour.toprates
  end

  def show
    @tour = Tour.infotour.find_by id: params[:id]
    @comments = Review.searches(params[:id]).page(params[:page]).per Settings.paginate.comment_page
    @booking = current_user.bookings.build if current_user
    @review = Review.new
    unless @tour
      redirect_to root_url
      flash[:info] = t "notfound"
    end
  end
end

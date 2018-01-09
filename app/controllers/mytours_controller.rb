class MytoursController < ApplicationController
  before_action :logged_in_user, only: [:show, :index]
  def home; end

  def index
    @tours = Tour.infotour.order(:id).paginate page: params[:page],
      per_page: Settings.paginate.per_page
  end

  def show
    @tours = Tour.infotour.find_by id: params[:id]
    @comments = Review.order(created_at: :desc).paginate page: params[:page],
      per_page: Settings.paginate.comment_page
    @booking = Booking.new
    @reviews = current_user.reviews.build if logged_in?
  end

  def search
    @tours = Tour.infotour.where destination: params[:term]
  end

  private

  def logged_in_user
    unless logged_in?
      flash[:danger] = t :notfound
      redirect_to login_url
    end
  end
end

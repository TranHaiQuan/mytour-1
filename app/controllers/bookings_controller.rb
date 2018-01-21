class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :loadbooking, only: [:create, :show, :delete, :edit, :update, :index]
  before_action :non_admin
  def show
    @booking = Booking.find_by id: params[:id]
  end

  def create
    @booking = current_user.bookings.build booking_params
    if @booking.save
      flash.now[:sucess] = t "success"
      redirect_to booking_path(@booking.id)
    else
      flash.now[:error] = t "notfound"
    end
  end

  def edit
    @booking = Booking.find_by id: params[:id]
    @tour = Tour.infotour.find_by id: @booking.tour_id
  end

  def update
    @booking = Booking.find_by id: params[:id]
    if @booking.update_attributes booking_params
      flash.now[:sucess] = t "success"
      redirect_to booked_path
    else
      flash.now[:errorbook] = t "notfound"
    end
  end

  def delete
    @booking = Booking.find params[:booking_id]
  end

  def destroy
    @booking = Booking.find params[:id]
    @booking.destroy
    if @booking.destroyed?
      flash.now[:sucess] = "Delete ok"
      redirect_to booked_path
    else
      flash.now[:errorbook] = "Delete False"
    end
  end
  def booked
    @books = Booking.where(user_id: current_user.id).order(created_at: :desc)
    unless @books
      flash[:notfound] = t "notfounds"
    end
  end

  private

  def loadbooking
    @booking = Booking.includes(:user, :tour).find_by id: params[:id]
  end

  def booking_params
    params.require(:booking).permit :tour_id, :number_customer, :total_price
  end

  def non_admin
    if current_user.admin?
      redirect_to root_path
      flash.now[:danger] = "You must not user, you should log in by user
        account to book tour"
    end
  end
end

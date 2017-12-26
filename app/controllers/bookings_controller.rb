class BookingsController < ApplicationController
  before_action :loadbooking, except: [:new, :create]
  def show; end

  def create
    @booking = Booking.create booking_params
    redirect_to edit_booking_path(@booking.id)
  end

  def edit; end

  def update
    if @booking.update_attributes booking_params
      redirect_to booking_path(@booking)
    else
      flash[:errorbook] = t "notfound"
      render :edit
    end
  end

  private

  def loadbooking
    @booking = Booking.includes(:user, :tour).find_by id: params[:id]
  end

  def booking_params
    params.require(:booking).permit :user_id, :tour_id, :departure_date,
      :number_customer, :total_price, :notebook
  end
end

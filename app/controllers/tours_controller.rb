class ToursController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_admin

  def index
    @tours = Tour.all_tour.order("created_at DESC").page(params[:page]).per Settings.admins.per_page
  end

  def search

  end

  def show
    @tour = Tour.find params[:id]
  end

  def new
    @tour = current_user.tours.build
    @tour.build_plan
    @tour.build_stipulate
    @tour.build_sevice_attach
  end

  def create
    @tour = current_user.tours.build tour_params
    @tour.user = current_user
    @tour.created_by = User.find(@tour.user_id).name
    if @tour.save
      flash.now[:success] = "Tour has been created have name: (can click to edit)"
    else
      flash.now[:danger] = "Tour can't create"
    end
    @tour.tour_name = "Tour #{@tour.destination} #{@tour.number_day}N#{@tour.number_night}D: #{@tour.tour_name}"
    @tour.tour_code = "TFE-#{Date.today.strftime("%d%m%Y")}-#{@tour.id}"
    @tour.save
    @tours = Tour.all_tour.order("created_at DESC").page(params[:page]).per Settings.admins.per_page
  end

  def edit
    @tour = Tour.find params[:id]
  end

  def update
    @tours = Tour.all_tour.order("created_at DESC").page(params[:page]).per Settings.admins.per_page
    @tour = Tour.find params[:id]
    @tour.user = current_user
    if @tour.update_attributes tour_params
      flash.now[:success] = "Tour has been updated have name: (can click to edit)"
    else
      flash.now[:danger] = "Tour can't edit"
    end
  end

  def delete
    @tour = Tour.find params[:tour_id]
  end

  def destroy
    @tours = Tour.all_tour.order("created_at DESC").page(params[:page]).per Settings.admins.per_page
    @tour = Tour.find params[:id]
    @tour.destroy
    if @tour.destroyed?
      flash.now[:danger] = "You was destroyed have name: "
    end
  end

  private

  def tour_params
    params.require(:tour).permit :tour_name, :tour_code, :destination,
      :number_day, :number_night, :departure_date, :return_date, :pickup_place,
      :price, :rate_avg, :created_by, :image,
      plan_attributes: [:id, :description],
      stipulate_attributes: [:id, :note, :cancel_tour],
      sevice_attach_attributes: [:id, :insurrance, :meal, :tour_guide,
      :entrance_tickets, :chuttle_car]
  end
end

class ToursController < ApplicationController
  def index
    @tours = Tour.all_tour.order("created_at DESC")
  end

  def show
    @tour = Tour.find params[:id]
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new tour_params
    if @tour.save
      flash[:created] = "Tour has been created"
      redirect_to tours_path
    else
      flash[:non_create] = "Tour can't create"
      render :new
    end
  end

  def edit
    @tour = Tour.find params[:id]
  end

  def update
    @tour = Tour.find params[:id]
    if @tour.update_attributes tour_params
      flash[:created] = "Tour has been updated"
      redirect_to tours_path
    else
      flash[:non_edit] = "Tour can't edit"
      render :edit
    end
  end

  private

  def tour_params
    params.require(:tour).permit :tour_name, :description
  end
end

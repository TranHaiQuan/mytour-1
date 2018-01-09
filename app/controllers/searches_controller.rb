class SearchesController < ApplicationController
  def search
    @tours = Tour.distin.search(params[:term]).order_by_des
    render json: @tours.map {|tour| tour.destination}
  end
end

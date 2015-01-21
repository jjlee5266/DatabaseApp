class LocationsController < ApplicationController

  def index
    # @locations = Location.all
    # render json: @locations

    @locations= Location.where("headquarter_id =1")
    @headquarter = Location.where("id=1")
    render json: [@locations,@headquarter]
  end

  def show
    @location = Location.find(params[:id])
    render json: @location
  end

  def new
    @location = Location.new
    render json: @location
  end

  def create
    @location = Location.new(location_params)
    render json: @location
  end

private

  def location_params
    params.require(:location).permit(:name, :address, :city, :state, :zip, :headquarters_id)
  end

end

class HikesController < ApplicationController
  def index
    @hikes = Hike.all

    @markers = @hikes.geocoded.map do |hike|
      {
        lat: hike.latitude,
        lng: hike.longitude
      }
    end
  end

  def show
    @hike = Hike.find(params[:id])
  end
end

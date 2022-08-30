class HikesController < ApplicationController
  def index
    @hikes = Hike.all

    @markers = @hikes.geocoded.map do |hike|
      {
        lat: hike.latitude,
        lng: hike.longitude,
        info_window: render_to_string(partial: "info_window", locals: {hike: hike})
      }
    end
  end

  def show
    @hike = Hike.find(params[:id])
  end
end

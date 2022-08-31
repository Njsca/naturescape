class HikesController < ApplicationController
  def index
    @hikes = Hike.all

    @markers = @hikes.geocoded.map do |hike|
      {
        lat: hike.latitude,
        lng: hike.longitude,
        info_window: render_to_string(partial: "info_window", locals: {hike: hike}),
        image_url: helpers.asset_url("pinpoint.png")
      }
    end
  end

  def show
    @hike = Hike.find(params[:id])

    @markers = Hike.where(id: @hike.id).geocoded.map do |hike|
      {
        lat: hike.latitude,
        lng: hike.longitude,
        info_window: render_to_string(partial: "info_window", locals: {hike: hike}),
        image_url: helpers.asset_url("pinpoint.png")
      }
    end
  end
end

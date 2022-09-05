class HikesController < ApplicationController
  def index
    @hikes = Hike.all

    if params.keys.count > 2
      query = []

      if params['duration']
        query << "duration = '#{params['duration']}'"
      end
      if params['extra-buddies']
        query << "buddy = '#{params['extra-buddies']}'"
      end

      if params['difficulty']
        query << "level = '#{params['difficulty']}'"
      end

      if params['terrain-type']
        query << "terrain = '#{params['terrain-type']}'"
      end

      if params['length']
        query << "length <= '#{params['length']}'"
      end

      if params['date']
        query << "date >= '#{params['date']}' AND date >= '#{params['date']} + 3'"
      end

      @hikes = Hike.where(query.join(" AND "))

    end

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
    @chatroom = @hike.chatroom.id

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

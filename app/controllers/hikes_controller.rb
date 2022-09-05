class HikesController < ApplicationController
  def index


    # if params.keys.count > 2
    if params[:start_date].present? || params['duration'].present? || params['extra-buddies'].present? || params['difficulty'].present? || params['terrain-type'].present?
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

      # if params['length']
      #   query << "length <= '#{params['length']}'"
      # end

      # if params[:start_date].present?
      #   dates = params[:start_date].split("-")
      #   date = Date.new(dates[0].to_i, dates[1].to_i, dates[2].to_i)
      # end

      @date_hikes = Hike.where(date: params[:start_date])

      query = query.join(" AND ")

      @hikes = []

      if query != ""
        @hikes = Hike.where(query)
      end

      union = @hikes.pluck(:id) & @date_hikes.pluck(:id)

      if union.count > 0
        @hikes = Hike.where(id: union)
        @hikes = Hike.where(id: @hikes.pluck(:id) + @date_hikes.pluck(:id))
      else
        @hikes = Hike.where(id: @hikes.pluck(:id))
      end


    else
      @hikes = Hike.all
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

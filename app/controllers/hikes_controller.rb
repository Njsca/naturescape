class HikesController < ApplicationController
  def index
    @hikes = Hike.all

    # if params[:duration].present?
    #   if params[:duration] == "1-day"
    #     @ids = []
    #     HikeTag.one_day_tag.each do |tag|
    #       tag.hike.id
    #     end

    #     @hikes = Hike.all.select do |hike|
    #       @ids.include?(hike.id)
    #     end
    #   end
    # end

    if params.keys.count > 2
      hikes_id = []
      
      if params[:duration] == "1-day"
        Hike.one_day.each { |hike| hikes_id << hike.id }
      end

      if params[:duration] == "multiple-days"
        Hike.multiple_days.each { |hike| hikes_id << hike.id }
      end

      if params["extra-buddies"] == "dog"
        Hike.dog_friendly.each { |hike| hikes_id << hike.id }
      end

      if params["extra-buddies"] == "kid"
        Hike.kid_friendly.each { |hike| hikes_id << hike.id }
      end

      if params[:difficulty] == "beginner"
        Hike.beginner.each { |hike| hikes_id << hike.id }
      end

      if params[:difficulty] == "intermediate"
        Hike.intermediate.each { |hike| hikes_id << hike.id }
      end

      if params[:difficulty] == "expert"
        Hike.expert.each { |hike| hikes_id << hike.id }
      end

      if params[:terrain] == "flat"
        Hike.flat.each { |hike| hikes_id << hike.id }
      end

      if params[:terrain] == "hills"
        Hike.hills.each { |hike| hikes_id << hike.id }
      end

      if params[:terrain] == "mountains"
        Hike.mountains.each { |hike| hikes_id << hike.id }
      end

      if params[:language] == "english"
        Hike.english.each { |hike| hikes_id << hike.id }
      end

      @hikes = Hike.where(id: hikes_id)
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

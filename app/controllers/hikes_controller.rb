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

      @hikes = Hike.where(query.join(" AND "))
      raise
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


# hikes_id = []
      
# if params[:duration] == "1-day"
#   Hike.one_day.each { |hike| hikes_id << hike.id }
# end

# if params[:duration] == "multiple-days"
#   Hike.multiple_days.each { |hike| hikes_id << hike.id }
# end

# if params["extra-buddies"] == "dog"
#   Hike.dog_friendly.each { |hike| hikes_id << hike.id }
# end

# if params["extra-buddies"] == "kid"
#   Hike.kid_friendly.each { |hike| hikes_id << hike.id }
# end

# if params[:difficulty] == "beginner"
#   Hike.beginner.each { |hike| hikes_id << hike.id }
# end

# if params[:difficulty] == "intermediate"
#   Hike.intermediate.each { |hike| hikes_id << hike.id }
# end

# if params[:difficulty] == "expert"
#   Hike.expert.each { |hike| hikes_id << hike.id }
# end

# if params[:terrain] == "flat"
#   Hike.flat.each { |hike| hikes_id << hike.id }
# end

# if params[:terrain] == "hills"
#   Hike.hills.each { |hike| hikes_id << hike.id }
# end

# if params[:terrain] == "mountains"
#   Hike.mountains.each { |hike| hikes_id << hike.id }
# end

# if params[:language] == "english"
#   Hike.english.each { |hike| hikes_id << hike.id }
# end

# @hikes = Hike.where(id: hikes_id)
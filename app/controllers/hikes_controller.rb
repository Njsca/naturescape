class HikesController < ApplicationController
  def index

    map_filter

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
    @chatroom = Chatroom.new
    @chatroom.hike = @hike
    @chatroom.save!
    @bookings = Booking.all

    @markers = Hike.where(id: @hike.id).geocoded.map do |hike|
      {
        lat: hike.latitude,
        lng: hike.longitude,
        info_window: render_to_string(partial: "info_window", locals: {hike: hike}),
        image_url: helpers.asset_url("pinpoint.png")
      }
    end
  end

  def new
    @hike = Hike.new
  end

  def create
    @hike = Hike.new(hike_params)
    @hike.user = current_user
    # raise
    if @hike.save
      redirect_to hike_path(@hike)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    set_hike
    if @hike.update(hike_params)
      redirect_to hike_path(@hike)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    set_hike
    @hike.destroy
    redirect_to profile_path, status: :see_other
  end

  private

  def hike_params
    params.require(:hike).permit(:title, :date, :location, :description, :duration, :buddy, :level, :terrain, :language, :length, photos: [])
  end

  def set_hike
    @hike = Hike.find(params[:id])
  end

  def map_filter
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


      if union.count.positive?
        @hikes = Hike.where(id: union)
        @hikes = Hike.where(id: @hikes.pluck(:id) + @date_hikes.pluck(:id))
      else
        @hikes = Hike.where(id: @hikes.pluck(:id))
      end
    else
      @hikes = Hike.all
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

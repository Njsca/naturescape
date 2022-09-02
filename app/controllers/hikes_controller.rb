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

    if params[:duration] == "1-day"
      @hikes = Hike.one_day
    end

    if params[:duration] == "multiple"
      @hikes = Hike.multiple_days
    end


    # scope :one_day, -> { where("duration = '1 day'" ) }
    # scope :multiple_day, -> { where("duration = 'multiple days'" ) }
    # scope :dog_friendly, -> { where("buddy = 'dog'" ) }
    # scope :kid_friendly, -> { where("buddy = 'kid'" ) }
    # scope :beginner, -> { where("level = 'beginner'" ) }
    # scope :intermediate, -> { where("level = 'intermediate'" ) }
    # scope :expert, -> { where("level = 'expert'" ) }
    # scope :flat, -> { where("terrain = 'flat'" ) }
    # scope :hills, -> { where("terrain = 'hills'" ) }
    # scope :mountains, -> { where("terrain = 'mountains'" ) }
    # scope :english, -> { where("language = 'english'" ) }


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

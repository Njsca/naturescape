class HikesController < ApplicationController
  def index
    @hikes = Hike.all
  end

  def show
    @hike = Hike.find(params[:id])
  end
end

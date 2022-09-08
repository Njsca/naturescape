class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index, :team, :profile ]

  def home
    @hike1 = Hike.first
    @hike2 = Hike.last
    @hike3 = Hike.order(Arel.sql('RANDOM()')).first
  end

  def team
  end

  def profile
    @user = current_user
    @hikes = Hike.all
    # @hike = Hike.find(params[:id])
    @my_bookings = current_user.bookings
    @bookings = Booking.all
    # @booking = Booking.find(params[:booking_id])
    @my_hikes = Hike.where(user_id: current_user.id)
    # @my_hike_bookings = Booking.where(booking.hike.user_id == current_user.id)
  end
end

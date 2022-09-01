class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @user = current_user
  end

  private

  def booking_params
    params.require(:booking).permit(:user, :hike)
  end
end

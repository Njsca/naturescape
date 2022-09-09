class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @hike = Hike.find(params[:hike_id])
  end

  def create
    # raise
    # @user.booking = current_user
    @booking = Booking.new
    @hike = Hike.find(params[:hike_id])
    @booking.user = current_user
    @booking.hike = @hike
    @booking.status = 0

    if @booking.save
      # @chatroom = Chatroom.create(booking_id: @booking.id) - For creating event!!

      redirect_to profile_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(status: params[:status])
      redirect_to profile_path
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    # @booking.hike_id = params[:hike_id]
    @hike = @booking.hike_id
    @booking.destroy

    if @booking.destroy
      redirect_to profile_path, status: :see_other
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user, :hike)
  end
end

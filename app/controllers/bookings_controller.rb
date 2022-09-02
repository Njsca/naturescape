class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @hike = Hike.find(params[:hike_id])
  end

  def create
    # raise
    @booking = Booking.new
    @hike = Hike.find(params[:hike_id])
    @booking.user = current_user
    @booking.hike = @hike

    if @booking.save
      @chatroom = @booking.create_chatroom!
      # @chatroom.create_message!
      @message = Message.new
      @message.user = current_user
      @message.chatroom = @chatroom

      redirect_to hike_booking_chatroom_path(@hike, @booking, @booking.chatroom)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user, :hike)
  end
end

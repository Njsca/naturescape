class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @booking = Booking.find(params[:booking_id])
    @hike = Hike.find(params[:hike_id])
  end
end

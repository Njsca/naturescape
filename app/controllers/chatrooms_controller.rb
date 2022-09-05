class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @hike = Hike.find(params[:hike_id])
  end
end

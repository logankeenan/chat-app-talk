class ChatRoomsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "ChatRoomsChannel#{params[:chat_room_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

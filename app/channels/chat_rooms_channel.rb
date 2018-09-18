class ChatRoomsChannel < ApplicationCable::Channel
	def subscribed
		chat_room_id = params[:chat_room_id]

		chat_room = ChatRoom.find(chat_room_id)

		if chat_room.users.include?(current_user)
			stream_from "ChatRoomsChannel#{chat_room_id}"
		end
	end

	def unsubscribed
		# Any cleanup needed when channel is unsubscribed
	end
end

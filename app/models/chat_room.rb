class ChatRoom < ApplicationRecord
	has_many :messages
	has_many :chat_room_users, inverse_of: :chat_room
	has_many :users, through: :chat_room_users

	validates :name, presence: true
end

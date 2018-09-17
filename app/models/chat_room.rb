class ChatRoom < ApplicationRecord

	validates :name, presence: true
end

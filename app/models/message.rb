class Message < ApplicationRecord
  belongs_to :chat_room
  belongs_to :user

  validates :message, presence: true
end

class Message < ApplicationRecord
  belongs_to :chat_room

  validates :message, presence: true
end

class User < ActiveRecord::Base
  has_many :chat_messages
  has_many :chats, through: :chat_messages
end

class Chat < ActiveRecord::Base
  has_many :chat_messages
  has_many :users, through: :chat_messages
end

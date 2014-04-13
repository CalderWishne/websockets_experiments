class ChatMessagesController < WebsocketRails::BaseController
  def initialize_session
    controller_store[:message_count] = 0
  end

  def broadcast
    puts 'in broadcast'
    puts message
    # notification = "Hey clients, this is the server!"
    broadcast_message :notification, message, namespace: 'chat_messages'
  end

end

  # def create
  #   if can? :create, ChatMessage
  #     chat_message = ChatMessage.create(event.data) do |message|
  #       message.user = current_user
  #     end
  #     if chat_message
  #       @messages_sent +=  1
  #       trigger_success( message: 'Message created')
  #       broadcast_message :created, chat_message,
  #         namespace: :chat_messages
  #     else
  #       trigger_failure( message: chat_message.error.full_messages.join(' ') )
  #     end
  #   else
  #     trigger_failure( message: 'Unauthorized' )
  #   end
  # end

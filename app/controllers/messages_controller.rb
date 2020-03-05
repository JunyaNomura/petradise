class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @message.chat_room = @chat_room
    @message.user = current_user
    if @message.save

      respond_to do |format|
        format.html { redirect_to chat_room_path(@chat_room) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render "chat_rooms/show" }
        format.js
      end
    end
  end

  # def create
  #   @room_message = RoomMessage.create user: current_user,
  #                                      room: @room,
  #                                      message: params.dig(:room_message, :message)

  #  RoomChannel.broadcast_to @room, @room_message
  # end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end

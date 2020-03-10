class ChatRoomsController < ApplicationController
  # def create
  #   @room = ChatRoom.new(permitted_parameters)

  #   if @room.save
  #     flash[:success] = "Room #{@room.name} was created successfully"
  #     redirect_to chat_room_path(@room)
  #   else
  #     render :new
  #   end
  # end

  def show
    # @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
    @chat_room = ChatRoom.find(params[:id])
    @room_messages = @chat_room.messages.includes(:user)
    # raise
  end

  private

  def permitted_parameters
    params.require(:chat_room).permit(:name)
  end

end

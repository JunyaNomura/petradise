class UsersController < ApplicationController
  def friend_request
    target_user = User.find(params[:id])
    current_user.friend_request(target_user)

    redirect_to pets_path
  end

  def friend_accept
    target_user = User.find(params[:id])
    target_user.accept_request(current_user)
    #should create and redirect to chat?
    #redirect_to pets_path

  end

  def friend_reject
    target_user = User.find(params[:id])
    # target_user.decline_request(current_user)
    target_user.block_friend(current_user)
    redirect_to pets_path
  end

  # def friend_remove
  #   target_user = User.find(params[:id])
  #   target_user.decline_request(current_user)
  #   # target_user.block_friend(current_user)
  #   redirect_to pets_path
  # end

  def my_page
    # @user = User.new
    @pet = current_user.pet || Pet.new
    @friends = current_user.friends.sort_by do |friend|
      friend.friendships.find_by(friend: current_user).updated_at
    end.reverse
    @users = current_user.friends.geocoded
    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end
end

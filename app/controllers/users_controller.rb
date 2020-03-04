class UsersController < ApplicationController
  def friend_request
    target_user = User.find(params[:id])
    current_user.friend_request(target_user)

    redirect_to pets_path
  end

  def friend_accept
    target_user = User.find(params[:id])
    target_user.accept_request(current_user)
    redirect_to pets_path
  end

  def friend_reject
    target_user = User.find(params[:id])
    # target_user.decline_request(current_user)
    target_user.block_friend(current_user)
    redirect_to pets_path
  end
end

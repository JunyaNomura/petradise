class UsersController < ApplicationController

  def friend_request
    target_user = User.find(params[:id])
    current_user.friend_request(target_user)

    redirect_to pets_path
  end

  # def friend_accept
  #   target_user = User.find(params[:id])
  #   target_user.accept_request(current_user)
  #   #should create and redirect to chat?
  #   #redirect_to pets_path
  #   if target_user.requested_friends.include?(current_user)
  #     current_user.accept_request(target_user)
  #   else
  #     current_user.friend_request(target_user)
  #   end
  #   # redirect_to pets_path
  # end

  # ↓↓ worked_well comment out just in case the code above has a problem
  def friend_accept
    target_user = User.find(params[:id])
    if target_user.pending_friends.include?(current_user)
      current_user.accept_request(target_user)
    else
      current_user.friend_request(target_user)
    end
    redirect_to pets_path
  end


  def friend_accept_show
    target_user = User.find(params[:id])
    current_user.accept_request(target_user)
    redirect_to pet_path(target_user.pet)
  end

  def friend_reject
    # byebug
    target_user = User.find(params[:id])
    if current_user.requested_friends.include?(target_user)
      current_user.block_friend(target_user)
    else
      target_user.friend_request(current_user)
      current_user.block_friend(target_user)
    end
    # target_user.decline_request(current_user)
    # target_user.block_friend(current_user)
    redirect_to pets_path
  end

  # def friend_remove
  #   target_user = User.find(params[:id])
  #   target_user.decline_request(current_user)
  #   # target_user.block_friend(current_user)
  #   redirect_to pets_path
  # end

  def my_page
  end

  def map
    park = User.near('Park', 1)
    @users = current_user.friends.geocoded
    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user }),
        image_url: helpers.cl_image_path(user.pet.photos.first.key),
      }
    end
    user_marker = {
      lat: current_user.latitude,
        lng: current_user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: current_user }),
        image_url: helpers.cl_image_path(current_user.pet.photos.first.key),
    }
    @markers << user_marker
  end

  def chats
    @friends = current_user.friends.left_outer_joins(:messages).order("messages.created_at DESC").uniq
    # current_user.chat_room_with(friend).order("created_at ASC")
  end

  def friends
    @pet = current_user.pet || Pet.new
    @friends = current_user.friends.sort_by do |friend|
      friend.friendships.find_by(friend: current_user).updated_at
    end.reverse
  end
end



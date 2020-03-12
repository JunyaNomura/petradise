class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :pet
  has_many :ratings
  has_many :messages, dependent: :destroy
  # has_many :chat_rooms, source: :chat_rooms, foreign_key: [:user_one, :user_two]
  has_one_attached :photo
  has_friendship
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  # validates :first_name, :last_name, :location, presence: true
  # exclude friend pets - current_user.friends
  # my pet - current_user.pet
  # block pets - current_user.blocked_friends
  # requested pets - current_user.pending_friends
  def excluded_friends
    pending_friends + blocked_friends + friends
  end

  def on_friendship_accepted(friendship)
    if ChatRoom.find_by(user_one: friendship.friendable, user_two: friendship.friend).nil?
    ChatRoom.create(user_one: friendship.friend, user_two: friendship.friendable, name: "#{friendship.friend.first_name}#{friendship.friendable.first_name}#{rand(0..6)}")
    end
  end

  def chat_rooms
    ChatRoom.where('user_one_id = ? OR user_two_id = ?', id, id)
  end

  def chat_room_with(user)
    chat_rooms.find_by(user_one: user)or(chat_rooms.find_by(user_two: user))
  end

  def match?(target_user)
    if self.pending_friends.include?(target_user)
      return true
    else
      return false
    end
  end

end

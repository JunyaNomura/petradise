class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :pet
  has_many :ratings
  has_many :messages, dependent: :destroy
  has_many :chat_rooms, source: :chat_rooms, foreign_key: [:user_one, :user_two]
  has_one_attached :photo
  has_friendship
  # validates :first_name, :last_name, :location, presence: true
  # exclude friend pets - current_user.friends
  # my pet - current_user.pet
  # block pets - current_user.blocked_friends
  # requested pets - current_user.pending_friends

  def excluded_friends
    pending_friends + blocked_friends + friends
  end

  def on_friendship_accepted(friendship)
    ChatRoom.create(user_one: friendship.friendable, user_two: friendship.friend)
  end
end

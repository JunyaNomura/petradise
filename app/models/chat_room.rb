class ChatRoom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :user_one, class_name: "User"
  belongs_to :user_two, class_name: "User"

  # different users must enter the chatroom - same person can't be user one and user two
  # don't allow a chatroom where user_one_id: 1, user_two_id: 2, if user_one_id: 2, user_two_id: 1 exists
  # validates :user_one_id, uniqueness: { scope: :user_two_id }

  # validate :check_for_inverse_ids_in_chatroom

  # def check_for_inverse_ids_in_chatroom
  #   if !ChatRoom.find_by(user_one_id: user_two_id, user_two_id: user_one_id).nil?
  #     errors.add(:user_one_id, message: 'A chatroom with these users already exists')
  #   end
  # end
end

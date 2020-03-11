class Pet < ApplicationRecord
  belongs_to :user
  has_many :ratings
  validates :name, :gender, :breed, :age, presence: true
  validates :age, numericality: {only_integer: true}
  validates :description, length: {maximum: 120}
  has_many_attached :photos
  acts_as_taggable_on :personalities, :preferences
  GENDER = ["Male", "Female"]
  PERSONALITY = ["Shy", "Active", "Confident", "Independent", "Happy", "Adaptable"]
  PREFERNECE = ["Indoor", "Active", "Outdoor", "Quiet", "Adaptable","Dogpark", "Running", "Relaxing", "Independent", "Likes Dog Restaurant"]

  def compatibilty(pet_second)
    number = personality_list.count do |pers|
      pet_second.personality_list.include?(pers)
    end
    return 0 if personality_list.count.zero?

    percentage = number / personality_list.count.to_f * 100
    percentage > 100 ? 100 : percentage.round(1)
    # if personality_list && current_user.pet.preference_list include?
    #   return 1
    # elsif current_user.pet.personality_list || current_user.pet.preference_list include?
    #   return 0.5
    # else
    #   return 0
    # end

  end

  def rating
    return nil if ratings.empty?

    sum = ratings.sum(&:stars)
    (sum.to_f / ratings.length).round
  end


end

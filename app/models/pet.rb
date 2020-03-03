class Pet < ApplicationRecord
  belongs_to :user
  has_many :ratings
  validates :name, :gender, :breed, :age, presence: true
  validates :age, numericality: {only_integer: true}
  validates :description, length: {maximum: 120}
  GENDER = ["Male", "Female"]
  PERSONALITY = ["Shy", "Active", "Confident", "Independent", "Happy", "Adaptable"]
end

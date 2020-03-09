class Rating < ApplicationRecord
  belongs_to :pet
  belongs_to :user
  validates :stars, numericality: {only_integer: true}
  validates :comments, presence: true, length: {maximum: 120}

end

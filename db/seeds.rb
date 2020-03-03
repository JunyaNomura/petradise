# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Pet.destroy_all
Rating.destroy_all
User.destroy_all

15.times do
  User.create!(
    first_name: Faker::Name.unique.first_name ,
    last_name: Faker::Name.unique.last_name ,
    location: Faker::Nation.capital_city,
    email: Faker::Internet.email,
    password: "123456"
    )
end

User.find_each do |user|
  15.times do
      Pet.create!(
      name: Faker::Name.unique.first_name,
      user: user,
      gender: "male" ,
      age: rand(0..18),
      breed: Faker::Nation.capital_city,
      description: Faker::Internet.email
      )
  end
end

# Pet.find_each do |pet|
#   15.times do
#     Pet.create!(
#       name: Faker::Name.unique.first_name,
#       user: user,
#       gender: "male" ,
#       age: rand(0..18),
#       breed: Faker::Nation.capital_city,
#       description: Faker::Internet.email
#     )
#   end
# end
Pet.find_each do |pet|
  15.times do
    Rating.create!(

     stars: rand(0..5),
     comments: Faker::Name.unique.last_name,
     user: user,
     pet: pet
     )
  end
end

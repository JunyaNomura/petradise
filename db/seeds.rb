# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Rating.destroy_all
Pet.destroy_all
User.destroy_all
# <<<<<<< HEAD
# puts "creating users"
# =======


puts "creating users"


15.times do
  User.create!(
    first_name: Faker::Name.unique.first_name ,
    last_name: Faker::Name.unique.last_name ,
    location: Faker::Nation.capital_city,
    email: Faker::Internet.email,
    password: "123456"
    )
end
# <<<<<<< HEAD
# puts "done"
# puts "Creating Pets and ratings"
# User.find_each do |user|
#   1.times do
#       pet = Pet.create!(
# =======

puts "done"
puts "Creating Pets and ratings"

User.find_each do |user|
  rand(1..3).times do
      p = Pet.create!(
      name: Faker::Name.unique.first_name,
      user: user,
      gender: ["male", "female"].sample,
      age: rand(0..18),
      breed: Faker::Creature::Dog.breed,
      description: Faker::Internet.email
      )
      rand(1..3).times do
        Rating.create!(

         stars: rand(0..5),
         comments: Faker::Name.unique.last_name,
         user: user,
         pet: p
         )
      end
  end
end

puts "Finished"

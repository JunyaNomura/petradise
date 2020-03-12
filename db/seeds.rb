# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'
ChatRoom.destroy_all
Rating.destroy_all
Pet.destroy_all
User.destroy_all
# <<<<<<< HEAD
# puts "creating users"
# =======



user_all_name = ["Person1","Person2","Person3","Person4","Person5","Person6","Person7","Person8","Person9","Person10",]
pet_all_name = ["Pet1","Pet2","Pet3","Pet4","Pet5","Pet6","Pet7","Pet8","Pet9","Pet10",]

puts "creating users"

user_urls = {
  1 => "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  2 => "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  3 => "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  4 => "https://images.pexels.com/photos/936229/pexels-photo-936229.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  5 => "https://images.pexels.com/photos/3775534/pexels-photo-3775534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  6 => "https://images.pexels.com/photos/3874039/pexels-photo-3874039.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  7 => "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  8 => "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  9 => "https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  10 => "https://images.pexels.com/photos/1680317/pexels-photo-1680317.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
}



(1..10).each do |number|
  # p user_/name = user_all_name.sample
  p url = user_urls[number]

  user = User.create!(
    first_name: ["Simon", "TJ", "Yann", "Thomas", "Apple", "Matt", "Janice", "Ant", "Johnson", "Jim"].sample,
    last_name: Faker::Name.unique.last_name ,
    location: ["Meguro", "Ebisu", "Shinagawa", "Shinjuku", "Shibuya","Tokyo","Shinbashi","Ikebukuro","Daikanyama","Gotanda","Oosaki"].sample,
    email: Faker::Internet.email,
    password: "123456"
  )
  file = URI.open(url)
  user.photo.attach(io: file, filename: "person_#{number}.jpg", content_type: 'image/jpg')
  user.save!
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

pet_urls = {
  1 => "https://images.pexels.com/photos/3671235/pexels-photo-3671235.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  2 => "https://images.pexels.com/photos/3190736/pexels-photo-3190736.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  3 => "https://images.pexels.com/photos/3812207/pexels-photo-3812207.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  4 => "https://images.pexels.com/photos/2023384/pexels-photo-2023384.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  5 => "https://images.pexels.com/photos/1458916/pexels-photo-1458916.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  6 => "https://images.pexels.com/photos/257540/pexels-photo-257540.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  7 => "https://images.pexels.com/photos/1851164/pexels-photo-1851164.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  8 => "https://images.pexels.com/photos/3813324/pexels-photo-3813324.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
  9 => "https://images.pexels.com/photos/733416/pexels-photo-733416.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  10 => "https://images.pexels.com/photos/2945541/pexels-photo-2945541.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
}

breed_name = {
1 => "Alaskan mamulate",
2 => "Chiwawa",
3 => "Akita",
4 => "Poodle",
5 => "Poodle",
6 => "Labrador Retriver",
7 => "Pug",
8 => "Pug",
9 => "Blue Lacy",
10 => "Chiwawa"
}

User.all.each_with_index do |user, index|
  p number = index + 1
  url = pet_urls[number]
  # pet_name = pet_all_name.sample
  # url = pet_urls[pet_name].sample
  1.times do
    pet = Pet.create!(
      name: Faker::Name.unique.first_name,
      user: user,
      gender: ["male", "female"].sample,
      age: rand(0..18),
      breed: breed_name[number],
      description: ["My dog doesn't like grass", "My dog likes to stay indoors", "My dog likes flowers", "My dog is runs super fast", "My dog likes to sleep all day long", "My dog like to eat my food", "My dog likes to eat leftover food", "My dog is very smart"].sample,
      personality_list: ["Shy", "Active", "Confident", "Independent", "Happy", "Adaptable"].sample(3),
      preference_list: ["Indoor", "Active", "Outdoor", "Quiet", "Adaptable","Dogpark", "Running", "Relaxing", "Independent", "Likes Dog Restaurant"].sample(3)
      )
    file = URI.open(url)
    pet.photos.attach(io: file, filename: "pet_#{number}.jpg", content_type: 'image/jpg')

    # pet.photo.attach(io: file, filename: "#{pet_name}.jpg", content_type: 'image/jpg')
    # pet.save!
    rand(10..30).times do
      Rating.create!(
        stars: rand(0..5),
        comments: ["Our dogs were really compatible with each other", "Very active dog", "Our dogs weren't compatible", "Very quiet dog", "Our dogs both like to run outside"].sample,
        user: user,
        pet: pet
      )
    end
  end
end

antonio = User.create!(
    first_name: "Antonio",
    last_name: "Sanchez",
    location: "Musashikosugi",
    email: "antonio.sanchez@lewagon.com",
    password: "123456"
    )
    file = File.open(File.join(Rails.root,'app','assets','images','antonio.jpg'))
    antonio.photo.attach(io: file, filename: "antonio.jpg", content_type: 'image/jpg')
    antonio.save!
    1.times do
    pet = Pet.create!(
      name: 'Pepa',
      user: antonio,
      gender: "female",
      age: 10,
      breed: "Street Dog",
      description: "My dog doesn't like grass",
      personality_list: ["Active", "Confident", "Independent"].sample(3),
      preference_list: ["Active", "Outdoor", "Quiet"].sample(3)
      )
    file = File.open(File.join(Rails.root,'app','assets','images','pepa.jpg'))
    pet.photos.attach(io: file, filename: "pepa.jpg", content_type: 'image/jpg')
    pet.save!
          rand(10..30).times do
        Rating.create!(

         stars: rand(0..5),
         comments: ["Our dogs were really compatible with each other", "Very active dog", "Our dogs weren't compatible", "Very quiet dog", "Our dogs both like to run outside"].sample,
         user: antonio,
         pet: pet
         )
      end
    end

junya= User.create!(
    first_name: "Junya",
    last_name: "Nomura" ,
    location: "Azabu",
    email: "junya.nomura@lewagon.com",
    password: "123456"
    )
 file = File.open(File.join(Rails.root,'app','assets','images','junya.jpg'))
    junya.photo.attach(io: file, filename: "junya.jpg", content_type: 'image/jpg')
    antonio.save!
    # junya.photo.attach())
    junya.save!
    1.times do
    pet = Pet.create!(
      name: 'Pepper',
      user: junya,
      gender: "male",
      age: 15,
      breed: "maltese",
      description: "My dog doesn't like grass",
      personality_list: ["Active", "Confident", "Independent"].sample(3),
      preference_list: ["Active", "Outdoor", "Quiet"].sample(3)
      )
    file = File.open(File.join(Rails.root,'app','assets','images','dog27.jpg'))
    pet.photos.attach(io: file, filename: "dog27.jpg", content_type: 'image/jpg')
    pet.save!
              rand(10..30).times do
        Rating.create!(

         stars: rand(0..5),
         comments: ["Our dogs were really compatible with each other", "Very active dog", "Our dogs weren't compatible", "Very quiet dog", "Our dogs both like to run outside"].sample,
         user: junya,
         pet: pet
         )
      end
    end

puts "Finished"

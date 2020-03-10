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
1 => "https://cdn5.vectorstock.com/i/1000x1000/21/29/colorful-caricature-thin-man-in-clothes-with-beard-vector-16102129.jpg",
2 => "https://cdn5.vectorstock.com/i/1000x1000/82/04/colorful-caricature-side-view-young-man-with-vector-14938204.jpg",
3 => "https://cdn1.vectorstock.com/i/1000x1000/79/75/color-image-caricature-full-body-male-person-with-vector-14767975.jpg",
4 => "https://previews.123rf.com/images/jemastock/jemastock1612/jemastock161203274/67266116-inspector-man-cartoon-icon-comic-character-and-caricature-theme-isolated-design-vector-illustration.jpg",
5 => "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRFDO_G-WLQFpkJ5Vp5M_Sn830uH6llQPKqZeljsJxGM9c35o11",
6 => "https://previews.123rf.com/images/jemastock/jemastock1706/jemastock170610298/80262778-man-cartoon-face-adult-caricature-character-vector-illustration.jpg",
7 => "https://cdn2.vectorstock.com/i/1000x1000/24/11/colorful-image-caricature-full-body-guy-sit-in-a-vector-14832411.jpg",
8 => "https://c8.alamy.com/comp/MCJ9BN/young-asian-man-cartoon-MCJ9BN.jpg",
9 => "https://c8.alamy.com/comp/MP93H5/happy-young-man-cartoon-scribble-MP93H5.jpg",
10 => "https://www.wikihow.com/images/thumb/f/ff/Draw-a-Cute-Cartoon-Person-Step-14.jpg/aid459745-v4-1200px-Draw-a-Cute-Cartoon-Person-Step-14.jpg"
}


(1..10).each do |number|
   # p user_/name = user_all_name.sample
 p url = user_urls[number]

  user = User.create!(
    first_name: ["Antonio", "Sho", "Junya", "TJ", "Yann", "Doug", "Sylvain", "Hiro", "Jethro", "Ant"].sample,
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
      breed: Faker::Creature::Dog.breed,
      description: ["My dog doesn't like grass", "My dog likes to stay indoors", "My dog likes flowers", "My dog is runs super fast", "My dog likes to sleep all day long", "My dog like to eat my food", "My dog likes to eat leftover food", "My dog is very smart"].sample
      )
    file = URI.open(url)
    pet.photo.attach(io: file, filename: "person_#{number}.jpg", content_type: 'image/jpg')
    pet.save!
    # pet.photo.attach(io: file, filename: "#{pet_name}.jpg", content_type: 'image/jpg')
    # pet.save!
      rand(1..3).times do
        Rating.create!(

         stars: rand(0..5),
         comments: ["Our dogs were really compatible with each other", "Very active dog", "Our dogs weren't compatible", "Very quiet dog", "Our dogs both like to run outside"].sample,
         user: user,
         pet: pet
         )
      end
  end
end
puts "Finished"

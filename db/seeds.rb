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
    first_name: Faker::Name.unique.first_name ,
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
1 => "https://images.squarespace-cdn.com/content/v1/58de1d18e4fcb5a321a4651f/1521710601901-71LME30UP1OHGX56WPWB/ke17ZwdGBToddI8pDm48kNPCkNVNCr8HTxI0cd0wWREUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8PaoYXhp6HxIwZIk7-Mi3Tsic-L2IOPH3Dwrhl-Ne3Z2fIHg-i8dk9VCjQDrvlTUTlj3M_1R4Ovdf5rcFodg0tsfdurHDt8XjyaGurlSWvQe/Puppy+Pet+Caricatures.jpg",
2 => "https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto/gigs/119509859/original/a4b4d447d4d4223232912ba81768f00177de6565/do-animal-dog-cat-pet-illustration-cartoon-caricature.png",
3 => "https://i.pinimg.com/originals/03/9e/ff/039effe37f28ff4e2124c3e299d23a03.jpg",
4 => "https://cdnb.artstation.com/p/assets/images/images/010/182/521/large/stefan-hansson-2018v14-1-value-study.jpg?1523015861",
5 => "https://www.jamiesale-cartoonist.com/wp-content/uploads/dog-12-2500x2500.png",
6 => "https://caricaturesbycarrie.weebly.com/uploads/2/6/1/7/26170082/s176653966739793612_p7_i1_w2560.jpeg",
7 => "https://mir-s3-cdn-cf.behance.net/project_modules/disp/2bdd5955527367.59888bc132eea.jpg",
8 => "https://i.ytimg.com/vi/2XkNFIR70Ac/maxresdefault.jpg",
9 => "https://cdn.shopify.com/s/files/1/0080/3481/1967/products/12-3-18_8cee1ebb-6144-4f30-a6e7-eae4ba5683ec_530x@2x.jpg?v=1579648340",
10 => "https://cdnb.artstation.com/p/assets/images/images/010/736/799/4k/stefan-hansson-2018v17-2-value-study.jpg?1525954702&dl=1"
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
         comments: Faker::Quote.famous_last_words,
         user: user,
         pet: pet
         )
      end
  end
end
puts "Finished"

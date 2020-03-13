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



# user_all_name = ["Person1","Person2","Person3","Person4","Person5","Person6","Person7","Person8","Person9","Person10",]
# pet_all_name = ["Pet1","Pet2","Pet3","Pet4","Pet5","Pet6","Pet7","Pet8","Pet9","Pet10",]

puts "creating users"

# user_urls = {
#   1 => "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
#   2 => "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
#   3 => "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
#   4 => "https://images.pexels.com/photos/936229/pexels-photo-936229.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
#   5 => "https://images.pexels.com/photos/3775534/pexels-photo-3775534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
#   6 => "https://images.pexels.com/photos/3874039/pexels-photo-3874039.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
#   7 => "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
#   8 => "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
#   9 => "https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
#   10 => "https://images.pexels.com/photos/1680317/pexels-photo-1680317.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
# }



# (1..10).each do |number|
#   # p user_/name = user_all_name.sample
#   p url = user_urls[number]

#   user = User.create!(
#     first_name: ["Simon", "TJ", "Yann", "Thomas", "Apple", "Matt", "Janice", "Ant", "Johnson", "Jim"].sample,
#     last_name: Faker::Name.unique.last_name ,
#     location: ["Meguro", "Ebisu", "Shinagawa", "Shinjuku", "Shibuya","Tokyo","Shinbashi","Ikebukuro","Daikanyama","Gotanda","Oosaki"].sample,
#     email: Faker::Internet.email,
#     password: "123456"
#   )
#   file = URI.open(url)
#   user.photo.attach(io: file, filename: "person_#{number}.jpg", content_type: 'image/jpg')
#   user.save!
# end
# # <<<<<<< HEAD
# # puts "done"
# # puts "Creating Pets and ratings"
# # User.find_each do |user|
# #   1.times do
# #       pet = Pet.create!(
# # =======

# puts "done"
# puts "Creating Pets and ratings"

# pet_urls = {
#   0 => "https://images.pexels.com/photos/2945541/pexels-photo-2945541.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
#   1 => "https://images.pexels.com/photos/3671235/pexels-photo-3671235.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
#   2 => "https://images.pexels.com/photos/3190736/pexels-photo-3190736.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
#   3 => "https://images.pexels.com/photos/3812207/pexels-photo-3812207.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
#   4 => "https://images.pexels.com/photos/2023384/pexels-photo-2023384.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
#   5 => "https://images.pexels.com/photos/1458916/pexels-photo-1458916.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
#   6 => "https://images.pexels.com/photos/257540/pexels-photo-257540.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
#   7 => "https://images.pexels.com/photos/1851164/pexels-photo-1851164.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
#   8 => "https://images.pexels.com/photos/3813324/pexels-photo-3813324.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
#   9 => "https://images.pexels.com/photos/733416/pexels-photo-733416.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
#   10 => "https://images.pexels.com/photos/2945541/pexels-photo-2945541.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
# }

# breed_name = {
#   1 => "Alaskan mamulate",
#   2 => "Chiwawa",
#   3 => "Akita",
#   4 => "Poodle",
#   5 => "Poodle",
#   6 => "Labrador Retriver",
#   7 => "Pug",
#   8 => "Pug",
#   9 => "Blue Lacy",
#   10 => "Chiwawa"
# }

# User.all.each_with_index do |user, index|
#   p number = index + 1
#   url = pet_urls[number]
#   # pet_name = pet_all_name.sample
#   # url = pet_urls[pet_name].sample
#   1.times do
#     pet = Pet.create!(
#       name: Faker::Name.unique.first_name,
#       user: user,
#       gender: ["male", "female"].sample,
#       age: rand(0..18),
#       breed: breed_name[number],
#       description: ["My dog doesn't like grass", "My dog likes to stay indoors", "My dog likes flowers", "My dog is runs super fast", "My dog likes to sleep all day long", "My dog like to eat my food", "My dog likes to eat leftover food", "My dog is very smart"].sample,
#       personality_list: ["Shy", "Active", "Confident", "Independent", "Happy", "Adaptable"].sample(3),
#       preference_list: ["Indoor", "Active", "Outdoor", "Quiet", "Adaptable","Dogpark", "Running", "Relaxing", "Independent", "Likes Dog Restaurant"].sample(3)
#     )
#     file = URI.open(url)
#     pet.photos.attach(io: file, filename: "pet_#{number}.jpg", content_type: 'image/jpg')
#     file = URI.open(pet_urls[number + 1 % 10])
#     pet.photos.attach(io: file, filename: "pet_#{number}_2.jpg", content_type: 'image/jpg')
#     file = URI.open(pet_urls[number + 2 % 10])
#     pet.photos.attach(io: file, filename: "pet_#{number}_3.jpg", content_type: 'image/jpg')
#     pet.save!
#     # pet.photo.attach(io: file, filename: "#{pet_name}.jpg", content_type: 'image/jpg')
#     # pet.save!
#     rand(10..30).times do
#       Rating.create!(
#         stars: rand(0..5),
#         comments: ["Our dogs were really compatible with each other", "Very active dog", "Our dogs weren't compatible", "Very quiet dog", "Our dogs both like to run outside"].sample,
#         user: user,
#         pet: pet
#       )
#     end
#   end
# end
["Meguro", "Ebisu", "Shinagawa", "Shinjuku", "Shibuya","Tokyo","Shinbashi","Ikebukuro","Daikanyama","Gotanda","Oosaki"]
puts "creating doug"
doug = User.create!(
  first_name: "doug",
  last_name: "lewagon" ,
  location: "Ebisu",
  email: "doug@lewagon.com",
  password: "123456"
)
file = File.open(File.join(Rails.root,'app','assets','images','doug.jpg'))
doug.photo.attach(io: file, filename: "doug.jpg", content_type: 'image/jpg')
doug.save!
1.times do
  pet = Pet.create!(
    name: 'Peanut',
    user: doug,
    gender: "Female",
    age: 6,
    breed: "Chihuahua",
    description: "My dog doesn't like Big dogs",
    personality_list: ["Shy", "Active", "Confident", "Independent", "Happy", "Adaptable"].sample(4),
    preference_list: ["Indoor", "Active", "Outdoor", "Quiet", "Adaptable","Dogpark", "Running", "Relaxing", "Independent", "Likes Dog Restaurant"].sample(4)
  )
  file = File.open(File.join(Rails.root,'app','assets','images','chihuaha1.jpeg'))
  pet.photos.attach(io: file, filename: "chihuahua1.jpeg", content_type: 'image/jpeg')
  file = File.open(File.join(Rails.root,'app','assets','images','chihuahua2.jpeg'))
  pet.photos.attach(io: file, filename: "chihuahua2.jpeg", content_type: 'image/jpeg')
  pet.save!
    rand(1..2).times do
    Rating.create!(
      stars: rand(4..5),
      comments: ["Our dogs were really compatible with each other", "Very active dog", "Our dogs weren't compatible", "Very quiet dog", "Our dogs both like to run outside"].sample,
      user: doug,
      pet: pet
    )
  end
  rand(8..28).times do
    Rating.create!(
      stars: rand(0..5),
      comments: ["Our dogs were really compatible with each other", "Very active dog", "Our dogs weren't compatible", "Very quiet dog", "Our dogs both like to run outside"].sample,
      user: doug,
      pet: pet
    )
  end
end
puts "creating yann"

yann = User.create!(
  first_name: "yann",
  last_name: "lewagon" ,
  location: "Shinjuku",
  email: "yann@lewagon.com",
  password: "123456"
)
file = File.open(File.join(Rails.root,'app','assets','images','yann.jpeg'))
yann.photo.attach(io: file, filename: "yann.jpeg", content_type: 'image/jpeg')
yann.save!
1.times do
  pet = Pet.create!(
    name: 'Max',
    user: yann,
    gender: "Male",
    age: 8,
    breed: "Beagle",
    description: "My dog doesn't like cats",
    personality_list: ["Shy", "Active", "Confident", "Independent", "Happy", "Adaptable"].sample(2),
    preference_list: ["Indoor", "Active", "Outdoor", "Quiet", "Adaptable","Dogpark", "Running", "Relaxing", "Independent", "Likes Dog Restaurant"].sample(3)
  )
  file = File.open(File.join(Rails.root,'app','assets','images','beagle1.jpeg'))
  pet.photos.attach(io: file, filename: "beagle1.jpeg", content_type: 'image/jpeg')
  file = File.open(File.join(Rails.root,'app','assets','images','beagle2.jpeg'))
  pet.photos.attach(io: file, filename: "beagle2.jpeg", content_type: 'image/jpeg')
  pet.save!
    rand(1..2).times do
    Rating.create!(
      stars: rand(4..5),
      comments: ["Our dogs were really compatible with each other", "Very active dog", "Our dogs weren't compatible", "Very quiet dog", "Our dogs both like to run outside"].sample,
      user: doug,
      pet: pet
    )
  end
  rand(8..28).times do
    Rating.create!(
      stars: rand(0..5),
      comments: ["Our dogs were really compatible with each other", "Very active dog", "Our dogs weren't compatible", "Very quiet dog", "Our dogs both like to run outside"].sample,
      user: doug,
      pet: pet
    )
  end
end

puts "creating James"

james = User.create!(
  first_name: "james",
  last_name: "lewagon" ,
  location: "Shibuya",
  email: "james@lewagon.com",
  password: "123456"
)
file = File.open(File.join(Rails.root,'app','assets','images','james.jpg'))
james.photo.attach(io: file, filename: "james.jpg", content_type: 'image/jpg')
james.save!
1.times do
  pet = Pet.create!(
    name: 'Sebastiana',
    user: james,
    gender: "Female",
    age: 4,
    breed: "Bulldog",
    description: "My dog likes to sleep all day long",
    personality_list: ["Shy", "Active", "Confident", "Independent", "Happy", "Adaptable"].sample(1),
    preference_list: ["Indoor", "Active", "Outdoor", "Quiet", "Adaptable","Dogpark", "Running", "Relaxing", "Independent", "Likes Dog Restaurant"].sample(2)
  )
  file = File.open(File.join(Rails.root,'app','assets','images','bulldog1.jpeg'))
  pet.photos.attach(io: file, filename: "bulldog1.jpeg", content_type: 'image/jpeg')
  file = File.open(File.join(Rails.root,'app','assets','images','bulldog2.jpeg'))
  pet.photos.attach(io: file, filename: "bulldog2.jpeg", content_type: 'image/jpeg')
  pet.save!
    rand(1..4).times do
    Rating.create!(
      stars: rand(1..2),
      comments: ["Our dogs were really compatible with each other", "Very active dog", "Our dogs weren't compatible", "Very quiet dog", "Our dogs both like to run outside"].sample,
      user: doug,
      pet: pet
    )
  end
  rand(9..26).times do
    Rating.create!(
      stars: rand(0..5),
      comments: ["Our dogs were really compatible with each other", "Very active dog", "Our dogs weren't compatible", "Very quiet dog", "Our dogs both like to run outside"].sample,
      user: doug,
      pet: pet
    )
  end
end

puts "creating hiro"

hiro = User.create!(
  first_name: "hiro",
  last_name: "lewagon" ,
  location: "Tokyo",
  email: "hiro@lewagon.com",
  password: "123456"
)
file = File.open(File.join(Rails.root,'app','assets','images','hiro.jpg'))
hiro.photo.attach(io: file, filename: "hiro.jpg", content_type: 'image/jpg')
hiro.save!
1.times do
  pet = Pet.create!(
    name: 'Charlie',
    user: hiro,
    gender: "Male",
    age: 6,
    breed: "Cocker",
    description: "My dog likes to bark at everything",
    personality_list: ["Shy", "Active", "Confident", "Independent", "Happy", "Adaptable"].sample(5),
    preference_list: ["Indoor", "Active", "Outdoor", "Quiet", "Adaptable","Dogpark", "Running", "Relaxing", "Independent", "Likes Dog Restaurant"].sample(2)
  )
  file = File.open(File.join(Rails.root,'app','assets','images','cocker1.jpeg'))
  pet.photos.attach(io: file, filename: "cocker1.jpeg", content_type: 'image/jpeg')
  file = File.open(File.join(Rails.root,'app','assets','images','cocker2.jpeg'))
  pet.photos.attach(io: file, filename: "cocker2.jpeg", content_type: 'image/jpeg')
  pet.save!
  rand(10..30).times do
    Rating.create!(

      stars: rand(0..5),
      comments: ["Our dogs were really compatible with each other", "Very active dog", "Our dogs weren't compatible", "Very quiet dog", "Our dogs both like to run outside"].sample,
      user: hiro,
      pet: pet
    )
  end
end

puts "creating maria"

maria = User.create!(
  first_name: "maria",
  last_name: "lewagon" ,
  location: "Shinbashi",
  email: "maria@lewagon.com",
  password: "123456"
)
file = File.open(File.join(Rails.root,'app','assets','images','maria.jpg'))
maria.photo.attach(io: file, filename: "maria.jpg", content_type: 'image/jpg')
maria.save!
1.times do
  pet = Pet.create!(
    name: 'Bella',
    user: maria,
    gender: "Female",
    age: 9,
    breed: "German Shepherd",
    description: "My dog eat flies",
    personality_list: ["Shy", "Active", "Confident", "Independent", "Happy", "Adaptable"].sample(2),
    preference_list: ["Indoor", "Active", "Outdoor", "Quiet", "Adaptable","Dogpark", "Running", "Relaxing", "Independent", "Likes Dog Restaurant"].sample(3)
  )
  file = File.open(File.join(Rails.root,'app','assets','images','german1.jpeg'))
  pet.photos.attach(io: file, filename: "german1.jpeg", content_type: 'image/jpeg')
  file = File.open(File.join(Rails.root,'app','assets','images','german2.jpeg'))
  pet.photos.attach(io: file, filename: "german2.jpeg", content_type: 'image/jpeg')
  pet.save!
  rand(1..4).times do
  Rating.create!(
      stars: rand(1..2),
      comments: ["Our dogs were really compatible with each other", "Very active dog", "Our dogs weren't compatible", "Very quiet dog", "Our dogs both like to run outside"].sample,
      user: doug,
      pet: pet
    )
  end
  rand(9..26).times do
    Rating.create!(
      stars: rand(0..5),
      comments: ["Our dogs were really compatible with each other", "Very active dog", "Our dogs weren't compatible", "Very quiet dog", "Our dogs both like to run outside"].sample,
      user: doug,
      pet: pet
    )
  end
end

puts "creating sho"

sho = User.create!(
  first_name: "sho",
  last_name: "lewagon" ,
  location: "Ikebukuro",
  email: "sho@lewagon.com",
  password: "123456"
)
file = File.open(File.join(Rails.root,'app','assets','images','sho.jpg'))
sho.photo.attach(io: file, filename: "sho.jpg", content_type: 'image/jpg')
sho.save!
1.times do
  pet = Pet.create!(
    name: 'Teddy',
    user: sho,
    gender: "Male",
    age: 8,
    breed: "Husky",
    description: "My dog doesn't like humans",
    personality_list: ["Shy", "Active", "Confident", "Independent", "Happy", "Adaptable"].sample(3),
    preference_list: ["Indoor", "Active", "Outdoor", "Quiet", "Adaptable","Dogpark", "Running", "Relaxing", "Independent", "Likes Dog Restaurant"].sample(3)
  )
  file = File.open(File.join(Rails.root,'app','assets','images','husky1.jpeg'))
  pet.photos.attach(io: file, filename: "husky1.jpeg", content_type: 'image/jpeg')
  file = File.open(File.join(Rails.root,'app','assets','images','husky2.jpeg'))
  pet.photos.attach(io: file, filename: "husky2.jpeg", content_type: 'image/jpeg')
  pet.save!
  rand(10..30).times do
    Rating.create!(

      stars: rand(0..5),
      comments: ["Our dogs were really compatible with each other", "Very active dog", "Our dogs weren't compatible", "Very quiet dog", "Our dogs both like to run outside"].sample,
      user: sho,
      pet: pet
    )
  end
end

puts "creating tj"

tj = User.create!(
  first_name: "tj",
  last_name: "lewagon" ,
  location: "Daikanyama",
  email: "tj@lewagon.com",
  password: "123456"
)
file = File.open(File.join(Rails.root,'app','assets','images','tj.jpg'))
tj.photo.attach(io: file, filename: "tj.jpg", content_type: 'image/jpg')
tj.save!
1.times do
  pet = Pet.create!(
    name: 'Molly',
    user: tj,
    gender: "Female",
    age: 12,
    breed: "Labrador",
    description: "My dog eat grass",
    personality_list: ["Shy", "Active", "Confident", "Independent", "Happy", "Adaptable"].sample(4),
    preference_list: ["Indoor", "Active", "Outdoor", "Quiet", "Adaptable","Dogpark", "Running", "Relaxing", "Independent", "Likes Dog Restaurant"].sample(3)
  )
  file = File.open(File.join(Rails.root,'app','assets','images','labrador1.jpeg'))
  pet.photos.attach(io: file, filename: "labrador1.jpeg", content_type: 'image/jpeg')
  file = File.open(File.join(Rails.root,'app','assets','images','labrador2.jpeg'))
  pet.photos.attach(io: file, filename: "labrador2.jpeg", content_type: 'image/jpeg')
  pet.save!
  rand(1..4).times do
  Rating.create!(
      stars: rand(4..5),
      comments: ["Our dogs were really compatible with each other", "Very active dog", "Our dogs weren't compatible", "Very quiet dog", "Our dogs both like to run outside"].sample,
      user: doug,
      pet: pet
    )
  end
  rand(9..26).times do
    Rating.create!(
      stars: rand(0..5),
      comments: ["Our dogs were really compatible with each other", "Very active dog", "Our dogs weren't compatible", "Very quiet dog", "Our dogs both like to run outside"].sample,
      user: doug,
      pet: pet
    )
  end
end

puts "creating trouni"

trouni = User.create!(
  first_name: "trouni",
  last_name: "lewagon" ,
  location: "Gotanda",
  email: "trouni@lewagon.com",
  password: "123456"
)
file = File.open(File.join(Rails.root,'app','assets','images','trouni.jpeg'))
trouni.photo.attach(io: file, filename: "trouni.jpeg", content_type: 'image/jpeg')
trouni.save!
1.times do
  pet = Pet.create!(
    name: 'Jack',
    user: trouni,
    gender: "Male",
    age: 7,
    breed: "Pomeranian",
    description: "My dog likes to spin",
    personality_list: ["Shy", "Active", "Confident", "Independent", "Happy", "Adaptable"].sample(3),
    preference_list: ["Indoor", "Active", "Outdoor", "Quiet", "Adaptable","Dogpark", "Running", "Relaxing", "Independent", "Likes Dog Restaurant"].sample(2)
  )
  file = File.open(File.join(Rails.root,'app','assets','images','pomeranian1.jpeg'))
  pet.photos.attach(io: file, filename: "pomeranian1.jpeg", content_type: 'image/jpeg')
  file = File.open(File.join(Rails.root,'app','assets','images','pomeranian2.jpeg'))
  pet.photos.attach(io: file, filename: "pomeranian2.jpeg", content_type: 'image/jpeg')
  pet.save!
  rand(10..30).times do
    Rating.create!(

      stars: rand(0..5),
      comments: ["Our dogs were really compatible with each other", "Very active dog", "Our dogs weren't compatible", "Very quiet dog", "Our dogs both like to run outside"].sample,
      user: trouni,
      pet: pet
    )
  end
end

puts "creating yuka"

yuka = User.create!(
  first_name: "yuka",
  last_name: "lewagon" ,
  location: "Shibuya",
  email: "yuka@lewagon.com",
  password: "123456"
)
file = File.open(File.join(Rails.root,'app','assets','images','yuka.jpg'))
yuka.photo.attach(io: file, filename: "yuka.jpg", content_type: 'image/jpg')
yuka.save!
1.times do
  pet = Pet.create!(
    name: 'Ruby',
    user: yuka,
    gender: "Female",
    age: 7,
    breed: "Pug",
    description: "My dog likes to run all day",
    personality_list: ["Shy", "Active", "Confident", "Independent", "Happy", "Adaptable"].sample(4),
    preference_list: ["Indoor", "Active", "Outdoor", "Quiet", "Adaptable","Dogpark", "Running", "Relaxing", "Independent", "Likes Dog Restaurant"].sample(3)
  )
  file = File.open(File.join(Rails.root,'app','assets','images','pug1.jpeg'))
  pet.photos.attach(io: file, filename: "pug1.jpeg", content_type: 'image/jpeg')
  file = File.open(File.join(Rails.root,'app','assets','images','pug2.jpeg'))
  pet.photos.attach(io: file, filename: "pug2.jpeg", content_type: 'image/jpeg')
  pet.save!
  rand(10..30).times do
    Rating.create!(

      stars: rand(0..5),
      comments: ["Our dogs were really compatible with each other", "Very active dog", "Our dogs weren't compatible", "Very quiet dog", "Our dogs both like to run outside"].sample,
      user: yuka,
      pet: pet
    )
  end
end
puts "creating antonio"

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
    gender: "Female",
    age: 10,
    breed: "Street Dog",
    description: "My dog is ver friendly",
    personality_list: ["Active", "Confident", "Independent"].sample(3),
    preference_list: ["Active", "Outdoor", "Quiet"].sample(3)
  )
  file = File.open(File.join(Rails.root,'app','assets','images','pepa.jpg'))
  pet.photos.attach(io: file, filename: "pepa.jpg", content_type: 'image/jpg')
  file = File.open(File.join(Rails.root,'app','assets','images','pepa2.jpg'))
  pet.photos.attach(io: file, filename: "pepa2.jpg", content_type: 'image/jpg')
  file = File.open(File.join(Rails.root,'app','assets','images','pepa3.jpg'))
  pet.photos.attach(io: file, filename: "pepa3.jpg", content_type: 'image/jpg')

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
# junya.photo.attach())
junya.save!
1.times do
  pet = Pet.create!(
    name: 'Esperanza',
    user: junya,
    gender: "Female",
    age: 10,
    breed: "maltese",
    description: "My dog is very cute",
    personality_list: ["Active", "Confident", "Independent"].sample(3),
    preference_list: ["Active", "Outdoor", "Quiet"].sample(3)
  )
  file = File.open(File.join(Rails.root,'app','assets','images','maltese1.jpg'))
  pet.photos.attach(io: file, filename: "maltese1.jpg", content_type: 'image/jpg')
  file = File.open(File.join(Rails.root,'app','assets','images','maltese2.jpeg'))
  pet.photos.attach(io: file, filename: "maltese2.jpeg", content_type: 'image/jpeg')
  file = File.open(File.join(Rails.root,'app','assets','images','maltese3.jpg'))
  pet.photos.attach(io: file, filename: "maltese3.jpg", content_type: 'image/jpg')
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

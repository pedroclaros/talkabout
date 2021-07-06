# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require 'faker'

#DESTROY
puts "destroying database"
Appointment.destroy_all
Favorite.destroy_all
Talk.destroy_all
Category.destroy_all
User.destroy_all

#CREATE
puts "creating seeds"

#CREATE USERS
user1 = User.new(email: "user1@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, bio: Faker::Company.bs)
user1.save
user2 = User.new(email: "user2@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, bio: Faker::Company.bs)
user2.save
user3 = User.new(email: "user3@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, bio: Faker::Company.bs)
user3.save
user4 = User.new(email: "user4@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, bio: Faker::Company.bs)
user4.save
user5 = User.new(email: "user5@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, bio: Faker::Company.bs)
user5.save
user6 = User.new(email: "user6@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, bio: Faker::Company.bs)
user6.save
user7 = User.new(email: "user7@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, bio: Faker::Company.bs)
user7.save
user8 = User.new(email: "user8@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, bio: Faker::Company.bs)
user8.save
user9 = User.new(email: "user9@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, bio: Faker::Company.bs)
user9.save
user10 = User.new(email: "user10@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, bio: Faker::Company.bs)
user10.save

# CREATE CATEGORIES
category1 = Category.create(title: "Negocios")
category2 = Category.create(title: "Comida y bebida")
category3 = Category.create(title: "Salud")
category4 = Category.create(title: "Música")
category5 = Category.create(title: "Autos, barcos y aviones")
category6 = Category.create(title: "Deportes y Salud")
category7 = Category.create(title: "Tecnología")
category8 = Category.create(title: "Moda")
category9 = Category.create(title: "Espiritualidad")
category10 = Category.create(title: "Gobierno")
category11 = Category.create(title: "Organizaciones y causas benéficas")
category12 = Category.create(title: "Otros")

#CREATE TALKS

#javascript
talk1 = Talk.new(title: "Javascript para dummies", description: Faker::Lorem.paragraph(sentence_count:4), date: "2021-07-19", time: "15:00", capacity: 10, category: category7, price: 1000, user: user1)
talk1.save!

talk2 = Talk.new(title: "Creando una empresa de consultorias", description: Faker::Lorem.paragraph(sentence_count:4), date: "2021-07-19", time: "16:00", capacity: 8, category: category1, price: 900, user: user1)
talk2.save!

talk3 = Talk.new(title: "Meditacion en 20 minutos", description: Faker::Lorem.paragraph(sentence_count:4), date: "2021-07-17", time: "12:00", category: category9, price: 500, user: user1)
talk3.save!

talk4 = Talk.new(title: "Preparacion de cerveza artesanal", description: Faker::Lorem.paragraph(sentence_count:4), date: "2021-07-17", time: "15:00", capacity: 5, category: category2, price: 1200, user: user1)
talk4.save!

talk5 = Talk.new(title: "Como escojer el coche adecuado para ti", description: Faker::Lorem.paragraph(sentence_count:4), date: "2021-07-19", time: "18:00", capacity: 20, category: category5, user: user2)
talk5.save!

talk6 = Talk.new(title: "Preparacion para corre un maratón", description: Faker::Lorem.paragraph(sentence_count:4), date: "2021-07-19", time: "15:00", capacity: 10, category: category6, price: 1000, user: user2)
talk6.save!

talk7 = Talk.new(title: "Como cuidarte en epocas de pandemia", description: Faker::Lorem.paragraph(sentence_count:4), date: "2021-07-18", time: "11:00", capacity: 12, category: category3, price: 800, user: user2)
talk7.save!

talk8 = Talk.new(title: "Estiramientos adecuados antes de nadar", description: Faker::Lorem.paragraph(sentence_count:4), date: "2021-07-18", time: "17:00", capacity: 15, category: category6, price: 1000, user: user2)
talk8.save!

talk9 = Talk.new(title: "Primeros pasos para ser un gran pianista", description: Faker::Lorem.paragraph(sentence_count:4), date: "2021-07-20", time: "10:00", capacity: 5, category: category4, price: 1300, user: user2)
talk9.save!

talk10 = Talk.new(title: "Como diseñar zapatos", description: Faker::Lorem.paragraph(sentence_count:4), date: "2021-07-20", time: "16:00", capacity: 20, category: category8, price: 750, user: user2)
talk10.save!



#CREATE APPOINTMENTS
appointment1 = Appointment.new(talk: talk1, user: user3)
appointment1.save

appointment2 = Appointment.new(talk: talk2, user: user3)
appointment2.save

appointment3 = Appointment.new(talk: talk1, user: user4)
appointment3.save

appointment4 = Appointment.new(talk: talk3, user: user4)
appointment4.save

appointment5 = Appointment.new(talk: talk4, user: user4)
appointment5.save



# #CREATE FAVORITES
favorite1 = Favorite.create(talk: talk1, user: user3)
favorite1 = Favorite.create(talk: talk5, user: user3)
favorite1 = Favorite.create(talk: talk6, user: user4)
favorite1 = Favorite.create(talk: talk7, user: user4)



#FINISH
puts "finished"





# user9 = User.new(email: "user9@abc.com", password: "123456789", first_name: Faker::Name.name, last_name: Faker::Name.last_name, phone_number: 1234567890)
# user9.photo.attach(io: fileavatar9, filename: 'testavatar2.png', content_type: 'image/png')
# user9.save

# #UPLOAD SERVICE PHOTOS
# #iglesia
# file_service1 = URI.open('https://i.imgur.com/MjNpekD.jpg')

# #caminar
# file_service2 = URI.open('https://i.imgur.com/e8ogYSv.jpg')

#  #existir
# file_service3 = URI.open('https://i.imgur.com/ThhaaOJ.jpg')

# # #pasear a tu perro
# file_service4 = URI.open('https://i.imgur.com/KiPm4Y1.jpg')

# # #tomar café
# file_service5 = URI.open('https://i.imgur.com/rDNtPvU.jpg')

# # #cenar con tu familia
# file_service6 = URI.open('https://i.imgur.com/ntfgNt0.jpg')

# # #a correr
# file_service7 = URI.open('https://i.imgur.com/mvxlRBX.jpg')

# # #al museo
# file_service8 = URI.open('https://i.imgur.com/7TnnzZc.jpg')

# # #a estudiar
# file_service9 = URI.open('https://i.imgur.com/OpYYER3.jpg')

#UPLOAD AVATAR PHOTOS

# #pedro
# fileavatar1 = URI.open('https://avatars.githubusercontent.com/u/82399802?v=4')

# #migue
# fileavatar2 = URI.open('https://avatars.githubusercontent.com/u/83521669?v=4')

# #dai
# fileavatar3 = URI.open('https://avatars.githubusercontent.com/u/62758510?v=4')

# #martin
# fileavatar4 = URI.open('https://avatars.githubusercontent.com/u/83670863?v=4')

# #Ro
# fileavatar5 = URI.open('https://avatars.githubusercontent.com/u/28849390?v=4')

# #gus
# fileavatar6 = URI.open('https://avatars.githubusercontent.com/u/56802137?v=4')

# #glen
# fileavatar7 = URI.open('https://avatars.githubusercontent.com/u/75204025?v=4')

# #euge
# fileavatar8 = URI.open('https://avatars.githubusercontent.com/u/83710646?v=4')

# #santi
# fileavatar9 = URI.open('https://avatars.githubusercontent.com/u/64335515?v=4')


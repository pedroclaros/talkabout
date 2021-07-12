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
# Favorite.destroy_all
Talk.destroy_all
Category.destroy_all
User.destroy_all



puts "cargando fotos avatar"
#UPLOAD AVATAR PHOTOS

# #pedro
fileavatar1 = URI.open('https://avatars.githubusercontent.com/u/82399802?v=4')

# #migue
fileavatar2 = URI.open('https://avatars.githubusercontent.com/u/83521669?v=4')

# #dai
fileavatar3 = URI.open('https://avatars.githubusercontent.com/u/62758510?v=4')

# #martin
fileavatar4 = URI.open('https://avatars.githubusercontent.com/u/83670863?v=4')

# #Ro
fileavatar5 = URI.open('https://avatars.githubusercontent.com/u/28849390?v=4')

# #gus
fileavatar6 = URI.open('https://avatars.githubusercontent.com/u/56802137?v=4')

# #glen
fileavatar7 = URI.open('https://avatars.githubusercontent.com/u/75204025?v=4')

# #euge
fileavatar8 = URI.open('https://avatars.githubusercontent.com/u/83710646?v=4')

# #santi
fileavatar9 = URI.open('https://avatars.githubusercontent.com/u/64335515?v=4')




puts "cargando fotos talks"

# #UPLOAD SERVICE PHOTOS

#javascript
file_service1 = URI.open('https://images.unsplash.com/photo-1593720216276-0caa6452e004?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=824&q=80')

#empresa
file_service2 = URI.open('https://images.unsplash.com/photo-1538688423619-a81d3f23454b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')

#meditacion
file_service3 = URI.open('https://images.unsplash.com/photo-1512438248247-f0f2a5a8b7f0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80')

#cerveza
file_service4 = URI.open('https://images.unsplash.com/photo-1441985969846-3e7c90531139?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')

#coche
file_service5 = URI.open('https://images.unsplash.com/photo-1585390062628-be8608aa7d83?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')

#maraton
file_service6 = URI.open('https://images.unsplash.com/photo-1452626038306-9aae5e071dd3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=753&q=80')

#pandemia
file_service7 = URI.open('https://images.unsplash.com/photo-1604604557577-4e27a33e57da?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')

#nadar
file_service8 = URI.open('https://images.unsplash.com/photo-1600965962361-9035dbfd1c50?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')

#piano
file_service9 = URI.open('https://images.unsplash.com/photo-1433622070098-754fdf81c929?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')

#calzado
file_service10 = URI.open('https://images.unsplash.com/photo-1477517787936-70ba786643fd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80')

#CREATE
puts "creando seeds"

#CREATE USERS
user1 = User.new(email: "user1@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, bio: Faker::Company.bs)
user1.photo.attach(io: fileavatar1, filename: 'testavatar2.png', content_type: 'image/png')
user1.save

user2 = User.new(email: "user2@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, bio: Faker::Company.bs)
user2.photo.attach(io: fileavatar2, filename: 'testavatar2.png', content_type: 'image/png')
user2.save

user3 = User.new(email: "user3@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, bio: Faker::Company.bs)
user3.photo.attach(io: fileavatar3, filename: 'testavatar2.png', content_type: 'image/png')
user3.save

user4 = User.new(email: "user4@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, bio: Faker::Company.bs)
user4.photo.attach(io: fileavatar4, filename: 'testavatar2.png', content_type: 'image/png')
user4.save

user5 = User.new(email: "user5@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, bio: Faker::Company.bs)
user5.photo.attach(io: fileavatar5, filename: 'testavatar2.png', content_type: 'image/png')
user5.save

user6 = User.new(email: "user6@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, bio: Faker::Company.bs)
user6.photo.attach(io: fileavatar6, filename: 'testavatar2.png', content_type: 'image/png')
user6.save

user7 = User.new(email: "user7@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, bio: Faker::Company.bs)
user7.photo.attach(io: fileavatar7, filename: 'testavatar2.png', content_type: 'image/png')
user7.save

user8 = User.new(email: "user8@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, bio: Faker::Company.bs)
user8.photo.attach(io: fileavatar8, filename: 'testavatar2.png', content_type: 'image/png')
user8.save

user9 = User.new(email: "user9@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, bio: Faker::Company.bs)
user9.photo.attach(io: fileavatar9, filename: 'testavatar2.png', content_type: 'image/png')
user9.save

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

talk1 = Talk.new(title: "Javascript para coders principiantes", date: "2021-07-19", time: "15:00", capacity: 10, category: category7, price: 1000, user: user1, info: "zoom meeting id: 1532498740 / password: javascript")
talk1.photo.attach(io: file_service1, filename: 'test2.png', content_type: 'image/png')

talk2 = Talk.new(title: "Aprende las bases para crear una nueva empresa", date: "2021-07-19", time: "16:00", capacity: 8, category: category1, price: 900, user: user1, info: "zoom meeting id: 9687414159 / password: empresa")
talk2.photo.attach(io: file_service2, filename: 'test2.png', content_type: 'image/png')

talk3 = Talk.new(title: "Meditacion en 20 minutos", date: "2021-07-17", time: "12:00", capacity: 15, category: category9, price: 500, user: user1, info: "zoom meeting id: 7478317419 / password: meditacion")
talk3.photo.attach(io: file_service3, filename: 'test2.png', content_type: 'image/png')

talk4 = Talk.new(title: "Preparacion de cerveza artesanal", date: "2021-07-17", time: "15:00", capacity: 5, category: category2, price: 1200, user: user1, info: "zoom meeting id: 9617453698 / password: cerveza")
talk4.photo.attach(io: file_service4, filename: 'test2.png', content_type: 'image/png')

talk5 = Talk.new(title: "Como escojer el coche adecuado para ti", date: "2021-07-19", time: "18:00", capacity: 20, category: category5, user: user2, info: "zoom meeting id: 1528747483 / password: coche")
talk5.photo.attach(io: file_service5, filename: 'test2.png', content_type: 'image/png')

talk6 = Talk.new(title: "Preparacion para correr un maratón", date: "2021-07-19", time: "15:00", capacity: 10, category: category6, price: 1000, user: user2, info: "zoom meeting id: 6563018740 / password: maratón")
talk6.photo.attach(io: file_service6, filename: 'test2.png', content_type: 'image/png')

talk7 = Talk.new(title: "Autocuidado para proteger a la familia", date: "2021-07-18", time: "11:00", capacity: 12, category: category3, price: 800, user: user2, info: "zoom meeting id: 7858777209 / password: pandemia")
talk7.photo.attach(io: file_service7, filename: 'test2.png', content_type: 'image/png')

talk8 = Talk.new(title: "Estiramientos adecuados antes de nadar", date: "2021-07-18", time: "17:00", capacity: 15, category: category6, price: 1000, user: user2, info: "zoom meeting id: 9981014547 / password: nadar")
talk8.photo.attach(io: file_service8, filename: 'test2.png', content_type: 'image/png')

talk9 = Talk.new(title: "Primeros pasos para ser un gran pianista", date: "2021-07-20", time: "10:00", capacity: 5, category: category4, price: 1300, user: user2, info: "zoom meeting id: 8700145257 / password: pianista")
talk9.photo.attach(io: file_service9, filename: 'test2.png', content_type: 'image/png')

talk10 = Talk.new(title: "Como diseñar zapatos", date: "2021-07-20", time: "16:00", capacity: 20, category: category8, price: 750, user: user2, info: "zoom meeting id: 6599870145 / password: zapatos")
talk10.photo.attach(io: file_service10, filename: 'test2.png', content_type: 'image/png')


talk1.explanation = "Bienvenido al curso de JavaScript, en el que aprenderemos todo lo necesario para dominar el lenguaje de programación más popular que existe actualmente y todas las tecnologías a su alrededor con más demanda laboral y más proyección de futuro."
talk1.description = "Rodo lo necesario para dominar el lenguaje de programación más popular"
talk1.save!

talk2.explanation =  "En este curso conocerás y aprenderás:

Manejar conceptos básicos de negocios tales como; empresarismo disruptivo, empresa, etc. Cuál es la realidad del empleo a nivel global y cómo te impacta a ti.
Definir qué es una empresa y qué es un empresario.
Cuáles son las características, competencias, habilidades y destrezas que debes tener para ser empresario.
Cuáles son los errores (“pecados capitales”) que hay que evitar al establecer un negocio.
Aplicar lo aprendido para mejorar competencias, destrezas y habilidades necesarias para ser exitosos al establecer tu empresa.
Cuáles son los pasos básicos a seguir para establecer una empresa. "
talk2.description = "Cuáles son las características, competencias, habilidades y destrezas que debes tener para ser empresario."
talk2.save!

talk3.description = "Aprende técnicas para equilibrar tu mente, alma, cuerpo y tu relación con el entorno."
talk3.explanation = "Aprende cómo meditar y por qué es la técnica que necesitas para llegar al desapego de todo lo que te afecta de forma negativa.
Aprende cómo puedes desarrollar tu conciencia, conectar tu cuerpo y despertar tus sentidos a través de la respiración.
Aprende técnicas como el Mindfulness, para que aceptes tus emociones, manejes el estrés emocional y sobrelleves tus pensamientos 
a través del autoconocimiento y la meditación." 
talk3.save!

talk4.description = "CTodo el proceso paso a paso en video para que puedas aprender a hacer cerveza en tu casa."
talk4.explanation =  "Hacer cerveza rica y de calidad en casa es posible.
Cinco años capacitando futuros cerveceros caseros de manera presencial.
En esta clase te ofrecemos las distintas partes que forman parte del proceso de elaboración de cerveza en casa en videos de alta calidad. 
Vas a encontrar la explicación y la demostración, así podrás replicarlo con facilidad en tu casa.
Todo en lenguaje sencillo y no técnico. El objetivo de esta clase es que te sientas confiad@ y te animes a hacer cerveza en tu casa." 
talk4.save!

talk5.description = "Criterios para comprar un coche con la cabeza y no con el corazón"
talk5.explanation = "La compra de coche es una decisión difícil, tanto porque supone destinar un presupuesto importante para su adquisición, 
como por la posibilidad de equivocarse en aspectos como el tipo de coche, tamaño y motor."
talk5.save!

talk6.description = "Las 10 claves para preparar un maratón exitosamente"
talk6.explanation = "Cuánto debemos entrenar, cuándo debemos dejar de hacerlo, cuánto debe durar un planning para preparar los 42.195 metros…
 Son algunas de las cuestiones a las cuales da respuesta este deportista de élite.  10 claves para afrontar la prueba mítica del fondo mundial."
talk6.save!

talk7.description = "Dar prioridad a su propio bienestar beneficia a toda su familia"
talk7.explanation= "Cuando se es madre o padre, el autocuidado suele quedar abandonado al final de la lista. Pero cuidar de uno mismo no es un lujo. 
Es esencial. Y durante estos momentos difíciles, cuando los niños están en casa y el estrés está en un nivel alto, es más importante que nunca. Estos son cinco consejos de nuestros médicos que pueden ayudar."
talk7.save!

talk8.description = "7 Ejercicios de Calentamiento antes de Nadar"
talk8.explanation =  "7 ejercicios de estiramientos para realizar antes de nadar, muy sencillos y que puedes hacer rápidamente.
Son ejercicios seleccionados de calentamiento para hacer antes de nadar, aunque pueden servir para hacer antes de comenzar cualquier otro deporte.
Ayudarán a que tu cuerpo tenga la movilidad que necesita para superar cualquier entrenamiento de manera eficiente. Esta secuencia solo toma alrededor de tres a cinco minutos!"
talk8.save!

talk9.description = "Aprender a tocar el Piano Desde Cero con 20 minutos al día"
talk9.explanation = "Si estás leyendo estas líneas es porque tú ya tienes ese deseo. Lo demás corre de mi cuenta. Te voy a enseñar cómo empezar a tocar el piano para que llegues tan lejos como quieras.
Hago hincapié en que este es un plan para aprender a tocar el piano desde cero. La única capacidad que hace falta es el deseo de aprender. Un deseo que te empuje a sentarte frente al piano un ratito todos los días. Todo lo demás se enseña, entrena y adquiere."
talk9.save!

talk10.description = "diseño y produccion de calzado"
talk10.explanation= "En este apasionante curso brindamos los conocimientos técnicos fundamentales de diseño y construcción
que conforman un prototipo, moldería, corte, supervisión de la producción y muestras, proveedores reales
de la industria. Los alumnos de este curso también diseñan y usan sus creaciones." 
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


#FINISH
puts "completado"





# user9 = User.new(email: "user9@abc.com", password: "123456789", first_name: Faker::Name.name, last_name: Faker::Name.last_name, phone_number: 1234567890)
# user9.photo.attach(io: fileavatar9, filename: 'testavatar2.png', content_type: 'image/png')
# user9.save




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Cleaning database..."
Tour.destroy_all
Leak.destroy_all
User.destroy_all

puts 'creating tours'

tour1 = Tour.new(
  name: 'The Mediterranean Civilizations',
  description: 'A wonderful journey within Mediterranean cultural history',
  full_information: 'We’ll start by picking-up a funicular, a popular public transport, to reach the top of Santana Hill and there I’ll share with you a story about a Portuguese Princess who was also Queen of England. This is also the trigger to tell you a brief story about the Portuguese tiles and on our walk we’ll see the most stunning tile facades of Lisbon. We will then get to Mouraria neighbourhood, the birthplace of Fado, and also an area with an impressive cultural dynamic. We’ll have a look at Lisbon’s street art while we climb Graça’s hill. Once at the top you’ll be rewarded with a memorable view while resting you legs a bit and having a refreshing drink. At the next viewpoint in Alfama’s district we’ll meet one of Lisbon’s symbols, Saint Vincent monastery, which explains a lot of our cultural influences. We’ll end this tour at Comercio Square the most important landmark with right in front of Tagus river.',
  duration: '2 hours',
  meeting_point: 'Hard Rock Cafe - Avenida da Liberdade, 2'
  )


file = URI.open("https://res.cloudinary.com/cecilerxdm71vcz1e/image/upload/v1584458546/LisbonExperience/Mod_Lisboa_M0367_oyshdu.jpg")
tour1.photos.attach(io: file, filename: "some-image.jpg", content_type: 'image/jpg')
tour1.save!

tour2 = Tour.new(
  name: 'The Portuguese Tiles',
  description: 'Thematic tour about the tile’s history in Lisbon',
  full_information: 'This is a thematic tour about the tile’s history in Lisbon. Tiles were used for five centuries as a decorative art being an important part of our cultural identity. Started to adorn living rooms, stairs and gardens but by the beginning of the XIX century they jumped outside to the Lisbon facades making this city an open-air museum. We will start at Casa do Alentejo an old casino which is fully decorated with moorish tiles. From there we’ll head to Bairro Alto hill where we’ll meet artwork tiles in its different kind of expressions. There it will be possible to admire outdoors tile panels as well indoor ones. We’ll meet XX century artworks till the very first tiles with the Portuguese brand from the XVI century.
In our pathway I’ll talk about some of our most important historical moments like the big disaster of 1755 and the Jewish massacre of 1506.',
  duration: '2 hours',
  meeting_point: 'Hard Rock Cafe - Avenida da Liberdade, 2'
  )

file = URI.open("https://res.cloudinary.com/cecilerxdm71vcz1e/image/upload/v1584463037/LisbonExperience/Tiles_ofa87k.jpg")
tour2.photos.attach(io: file, filename: "some-image.jpg", content_type: 'image/jpg')
tour2.save!


puts 'creating leaks'

leak1 = Leak.new(
  title: 'the chief is dead, Vive the chief!',
  description: 'Lorem ipsum amet aliqua in incididunt ad deserunt sit amet dolore laboris.',
  color: '#50504B'
  )
leak1.save!

leak2 = Leak.new(
  title: 'Technologie: Nouveau monde cherche nouveaux managers',
  description: 'Laborum in aliqua officia qui amet sunt ullamco sed anim quis sint nostrud id eiusmod.',
  color: '#d2d2c8'
  )
leak2.save!

leak3 = Leak.new(
  title: 'Le collaborateur moderne, un humain avec de nouvelles attentes',
  description: 'Laborum in aliqua officia qui amet sunt ullamco sed anim quis sint nostrud id eiusmod.',
  color: '#87867E'
  )
leak3.save!

leak4 = Leak.new(
  title: 'WinLab présent au BIM World 2020' ,
  description: 'Laborum in aliqua officia qui amet sunt ullamco sed anim quis sint nostrud id eiusmod.',
  color: '#d2d2c8'
  )
leak4.save!

puts 'creating editor'

user1 = User.new(
  email:'editor',
  password:'editor_le')
user1.save!

user2 = User.new(
  email:'editors',
  password:'editor_le')
user2.save!

user3 = User.new(
  email:'editorss',
  password:'editor_le')
user3.save!

user4 = User.new(
  email:'editorsss',
  password:'editor_le')
user4.save!

user5 = User.new(
  email:'editorssss',
  password:'editor_le')
user5.save!
user6 = User.new(
  email:'editorsssss',
  password:'editor_le')
user6.save!
user7 = User.new(
  email:'editorssssss',
  password:'editor_le')
user7.save!
user8 = User.new(
  id: 17,
  email:'editorsssssss',
  password:'editor_le')
user8.save!
puts 'Finished!'

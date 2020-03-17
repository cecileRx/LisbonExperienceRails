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
  name: 'Tour of the day',
  description: 'lorem ipsum Aute elit duis qui irure . Fugiat et consequat non dolor cillum incididunt dolor eu aliquip excepteur nisi nostrud dolor veniam ad',
  full_information: 'lorem ipsum Aute elit duis qui irure . Fugiat et consequat non dolor cillum incididunt dolor eu aliquip excepteur nisi nostrud dolor veniam adlorem ipsum Aute elit duis qui irure . Fugiat et consequat non dolor cillum incididunt dolor eu aliquip excepteur nisi nostrud dolor veniam ad'
  )

file = URI.open("https://res.cloudinary.com/cecilerxdm71vcz1e/image/upload/v1584458546/LisbonExperience/Mod_Lisboa_M0367_oyshdu.jpg")
tour1.photo.attach(io: file, filename: "some-image.jpg", content_type: 'image/jpg')
tour1.save!

tour2 = Tour.new(
  name: 'Tour of the month',
  description: 'lorem ipsum Aute elit duis qui irure . Fugiat et consequat non dolor cillum incididunt dolor eu aliquip excepteur nisi nostrud dolor veniam ad',
  full_information: 'lorem ipsum Aute elit duis qui irure . Fugiat et consequat non dolor cillum incididunt dolor eu aliquip excepteur nisi nostrud dolor veniam adlorem ipsum Aute elit duis qui irure . Fugiat et consequat non dolor cillum incididunt dolor eu aliquip excepteur nisi nostrud dolor veniam ad'
  )
file = URI.open("https://res.cloudinary.com/cecilerxdm71vcz1e/image/upload/v1584458546/LisbonExperience/Mod_Lisboa_M0367_oyshdu.jpg")
tour2.photo.attach(io: file, filename: "some-image.jpg", content_type: 'image/jpg')
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
puts 'Finished!'

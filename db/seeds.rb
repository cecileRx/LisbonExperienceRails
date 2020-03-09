# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
tour1.save!

tour2 = Tour.new(
  name: 'Tour of the month',
  description: 'lorem ipsum Aute elit duis qui irure . Fugiat et consequat non dolor cillum incididunt dolor eu aliquip excepteur nisi nostrud dolor veniam ad',
  full_information: 'lorem ipsum Aute elit duis qui irure . Fugiat et consequat non dolor cillum incididunt dolor eu aliquip excepteur nisi nostrud dolor veniam adlorem ipsum Aute elit duis qui irure . Fugiat et consequat non dolor cillum incididunt dolor eu aliquip excepteur nisi nostrud dolor veniam ad'
  )
tour2.save!

tour3 = Tour.new(
  name: 'Tour of the year',
  description: 'lorem ipsum Aute elit duis qui irure . Fugiat et consequat non dolor cillum incididunt dolor eu aliquip excepteur nisi nostrud dolor veniam ad',
  full_information: 'lorem ipsum Aute elit duis qui irure . Fugiat et consequat non dolor cillum incididunt dolor eu aliquip excepteur nisi nostrud dolor veniam adlorem ipsum Aute elit duis qui irure . Fugiat et consequat non dolor cillum incididunt dolor eu aliquip excepteur nisi nostrud dolor veniam ad'
  )
tour3.save!

puts 'creating leaks'

leak1 = Leak.new(
  title: 'the chief is dead, Vive the chief!',
  description: 'Lorem ipsum amet aliqua in incididunt ad deserunt sit amet dolore laboris.'
  )
leak1.save!

leak2 = Leak.new(
  title: 'Technologie: Nouveau monde cherche nouveaux managers',
  description: 'Laborum in aliqua officia qui amet sunt ullamco sed anim quis sint nostrud id eiusmod.'
  )
leak2.save!

leak3 = Leak.new(
  title: 'Le collaborateur moderne, un humain avec de nouvelles attentes',
  description: 'Laborum in aliqua officia qui amet sunt ullamco sed anim quis sint nostrud id eiusmod.'
  )
leak3.save!

leak4 = Leak.new(
  title: 'WinLab présent au BIM World 2020' ,
  description: 'Laborum in aliqua officia qui amet sunt ullamco sed anim quis sint nostrud id eiusmod.'
  )
leak4.save!

puts 'creating editor'

user1 = User.new(
  email:'editor',
  password:'editor_le')
user1.save!

puts 'Finished!'

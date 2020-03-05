# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'creating tours'

tour1 = Tour.new(
  name: 'Tour of the day',
  description: 'lorem ipsum Aute elit duis qui irure . Fugiat et consequat non dolor cillum incididunt dolor eu aliquip excepteur nisi nostrud dolor veniam ad'
  )
tour1.save!

tour2 = Tour.new(
  name: 'Tour of the month',
  description: 'lorem ipsum Aute elit duis qui irure . Fugiat et consequat non dolor cillum incididunt dolor eu aliquip excepteur nisi nostrud dolor veniam ad'
  )
tour2.save!

tour3 = Tour.new(
  name: 'Tour of the year',
  description: 'lorem ipsum Aute elit duis qui irure . Fugiat et consequat non dolor cillum incididunt dolor eu aliquip excepteur nisi nostrud dolor veniam ad'
  )
tour3.save!

puts 'Finished!'

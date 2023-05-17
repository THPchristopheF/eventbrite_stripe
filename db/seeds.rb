# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
20.times do |x|
  puts "create users"
  User.create(
      email: Faker::Name.first_name+'@yopmail.com',
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      description: Faker::Lorem.sentences(number: 1)
      )
end

6.times do |x|
  puts "create events"
  Event.create(
    start_date: Faker::Time.forward(days: 100, period: :morning),
    duration: rand(1..40)*5,
    description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
    location: Faker::Address.city,
    price: rand(1..1000),
    title: Faker::Esport.event,
    admin_id: rand(1..5))
end

100.times do |x|
  puts "create attendances"
  Attendance.create(
    stripe_customer_id:rand(1000..10000),
    user_id: rand(6..19),
    event_id: rand(1..5))
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Event.destroy_all
Photo.destroy_all

matthijs = User.create!(
  email: 'matthijs@gmail.com',
  password: '123456'
)
ha = User.create!(
  email: 'ha@gmail.com',
  password: '123456'
)

event1 = Event.create!(
  name: "Ruby in Rails", description: "meet up for Ruby in Rails", location: "Den Haag", price: "5",
  capacity: 7, includes_food: true, includes_drink: false, starts_at: Date.parse("2017-11-1"), ends_at: Date.parse("2017-11-5"), active: true, user: matthijs
)

event2 = Event.create!(
  name: "Hackathon", description: "Hackathon", location: "Amsterdam", price: "10",
  capacity: 12, includes_food: true, includes_drink: true, starts_at: Date.parse("2017-11-7"), ends_at: Date.parse("2017-11-9"), active: true, user: ha
)
# Photos
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/hacloudinary/image/upload/v1510230051/event3_znswee.jpg", event: event1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/hacloudinary/image/upload/v1510229835/event2_lgnxka.jpg", event: event1)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/hacloudinary/image/upload/v1510229698/event1_lc3smy.jpg", event: event2)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Event.destroy_all
matthijs = User.create!(
  email: 'matthijs@gmail.com',
  password: '123456'
)

Event.create!(
  name: "matthijs", description: "meet up for Ruby in Rails", location: "Den Haag", price: "5",
  capacity: 7, includes_food: true, includes_drink: false, starts_at: Date.parse("2017-11-1"), ends_at: Date.parse("2017-11-5"), active: true, user: matthijs
)

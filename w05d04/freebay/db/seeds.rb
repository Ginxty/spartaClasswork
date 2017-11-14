# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

item1 = Item.create(name: "James", description: "A great young man with lots of energy", location: "Leeds", image: "http://www.fillmurray.com/300/300", available: true)
item2 = Item.create(name: "Martha", description: "A resistant rock", location: "Leeds", image: "http://www.fillmurray.com/300/300", available: true)
user = User.create(email: "james@gmail.com", password: "password", password_confirmation: "password")
user.items << item1
user.items << item2
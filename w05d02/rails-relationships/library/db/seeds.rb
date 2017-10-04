# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


jk_rowling = Author.create(name: "JK Rowling", net_worth: 12000, bob: "21-04-77")
stephen_king = Author.create(name: "Stephen King", net_worth: 110000, bob: "11-06-56")

harry_potter1 = Book.create(title: "Harry1", blurb: "is good", genre: "fantasy")
harry_potter2 = Book.create(title: "Harry2", blurb: "is good", genre: "fantasy")
harry_potter3 = Book.create(title: "Harry3", blurb: "is good", genre: "fantasy")
harry_potter4 = Book.create(title: "Harry1", blurb: "is good", genre: "fantasy")
it = Book.create(title: "it", blurb: "is spook", genre: "horror")

jk_rowling.books << harry_potter1
jk_rowling.books << harry_potter2
jk_rowling.books << harry_potter3
jk_rowling.books << harry_potter4

jk_rowling.save

stephen_king.books << it

stephen_king.save
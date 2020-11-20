# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Destroying all the data..."

Cocktail.destroy_all
Ingredient.destroy_all

puts "Populating database with cocktails and ingredients"

file = URI.open('https://images.kitchenstories.io/recipeImages/LongIslandIcedTea_4x3/LongIslandIcedTea_4x3-large-landscape-150.jpg')
cocktail = Cocktail.new(name: 'Long Island Iced Tea')
cocktail.photo.attach(io: file, filename: 'liit.jpg', content_type: 'image/jpg')

Cocktail.create(name: "Old fashioned")

Ingredient.create(name: "Lemon")
Ingredient.create(name: "Ice")
Ingredient.create(name: "Mint leaves")
Ingredient.create(name: "Olives")

puts "Done"

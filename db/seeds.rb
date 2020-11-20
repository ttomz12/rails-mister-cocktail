# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all the data..."

Cocktail.destroy_all
Ingredient.destroy_all

puts "Populating database with cocktails and ingredients"

Ingredient.create(name: "Lemon")
Ingredient.create(name: "Ice")
Ingredient.create(name: "Mint leaves")
Ingredient.create(name: "Olives")
Ingredient.create(name: "Vodka")

Cocktail.create(name: "Old fashioned")
Cocktail.create(name: "Manhattan")
Cocktail.create(name: "Negroni")
Cocktail.create(name: "Aperol Spritz")

Dose.create(description: "Very bitter", ingredient_id: 4, cocktail_id: 10)

puts "Done"

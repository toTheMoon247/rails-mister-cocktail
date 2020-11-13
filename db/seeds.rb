# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# TODO: Add destroy

puts "Popoluating ingredients"
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

puts "Populating cocktails"
Cocktail.create(name: "Mojito")
Cocktail.create(name: "Capirinha")

Dose.create(cocktail: Cocktail.first, ingredient: Ingredient.first, description: "A lot of lemon")

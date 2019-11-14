# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'


url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
url_serialized = open(url).read
drinks = JSON.parse(url_serialized)

DRINK_LIST = drinks["drinks"].map {|drink| drink['strIngredient1'] }


#  add 10 drinks
10.times do
  Ingredient.create(name: DRINK_LIST[rand(0..DRINK_LIST.length - 1)])
end

Cocktail.create(name: 'Manhattan')

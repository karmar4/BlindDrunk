# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'
require 'faker'

p "Creating seeds"

Ingredient.destroy_all
Cocktail.destroy_all

ingredients = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)

ingredients['drinks'].each { |hash| Ingredient.create(name: hash['strIngredient1']) }

cocktail = Cocktail.new(name: "Sweet Poison")
url = "https://hips.hearstapps.com/del.h-cdn.co/assets/15/38/1442432590-delish-halloween-cocktails-sweet-poison.png"
cocktail.remote_photo_url = url
cocktail.save
2.times {Dose.create(description: Faker::Measurement.metric_volume, cocktail: cocktail, ingredient: Ingredient.find(rand(1..10)))}

cocktail = Cocktail.new(name: "Hot Mama")
url = "https://www.kitchengonerogue.com/wp-content/uploads/2017/05/sweet-hot-mama-cocktail_kitchengonerogue-600x900.jpg"
cocktail.remote_photo_url = url
cocktail.save
2.times {Dose.create(description: Faker::Measurement.metric_volume, cocktail: cocktail, ingredient: Ingredient.find(rand(1..10)))}

cocktail = Cocktail.new(name: "Thyme to Delight")
url = "https://stevethebartender.com.au/wp-content/uploads/2016/02/strawberry-gin-cocktail.jpg"
cocktail.remote_photo_url = url
cocktail.save
2.times {Dose.create(description: Faker::Measurement.metric_volume, cocktail: cocktail, ingredient: Ingredient.find(rand(1..10)))}

cocktail = Cocktail.new(name: "Hard Shandy")
url = "https://www.tullamoredew.com/assets/uploads/cocktails/18-hardshandy-large.jpg"
cocktail.remote_photo_url = url
cocktail.save
2.times {Dose.create(description: Faker::Measurement.metric_volume, cocktail: cocktail, ingredient: Ingredient.find(rand(1..10)))}

cocktail = Cocktail.new(name: "Negroni")
url = "https://s3-eu-west-1.amazonaws.com/beefeater.com/stage/DrinkToMarket/4716/drink/3/drink_500x753.jpeg"
cocktail.remote_photo_url = url
cocktail.save
2.times {Dose.create(description: Faker::Measurement.metric_volume, cocktail: cocktail, ingredient: Ingredient.find(rand(1..10)))}

cocktail = Cocktail.new(name: "Fall from the Tree")
url = "https://cdn.liquor.com/wp-content/uploads/2018/08/31124049/3-Prebatched-Cocktails-for-your-Football-Parties-720x720-article.jpg"
cocktail.remote_photo_url = url
cocktail.save
2.times {Dose.create(description: Faker::Measurement.metric_volume, cocktail: cocktail, ingredient: Ingredient.find(rand(1..10)))}

cocktail = Cocktail.new(name: "The Phoenix")
url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmhCb8WyCyUh9h6DCzjNkEKpfDXDwx5r0TdyFoSCzNQyOMlEaDAg&s"
cocktail.remote_photo_url = url
cocktail.save
2.times {Dose.create(description: Faker::Measurement.metric_volume, cocktail: cocktail, ingredient: Ingredient.find(rand(1..10)))}

p "Finished seeds."

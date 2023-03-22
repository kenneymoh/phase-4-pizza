# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#generating 15 random restaurantpizzas
15.times do
  restaurant_pizza = RestaurantPizza.create(
      price: rand(1..30),
      restaurant_id: rand(1..10),
      pizza_id: rand(1-10)
  )
end
#generating 15 pizzas
15.times do
  pizza = Pizza.create(
      name: Faker::Food.dish,
      ingredients: Faker::Food.ingredient
  )
end

15.times do
  restaurant = Restaurant.create(
      name: Faker::Restaurant.name,
      location: Faker::Address.full_address
  )
end



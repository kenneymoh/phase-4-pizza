class CreateRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_pizzas do |t|
      t.string :price
      t.string :restaurant_id
      t.string :pizza_id

      t.timestamps
    end
  end
end

class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :location
  has_many :pizzas
end

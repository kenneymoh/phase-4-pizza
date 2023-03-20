require "test_helper"

class RestaurantsPizzasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurants_pizza = restaurants_pizzas(:one)
  end

  test "should get index" do
    get restaurants_pizzas_url, as: :json
    assert_response :success
  end

  test "should create restaurants_pizza" do
    assert_difference("RestaurantsPizza.count") do
      post restaurants_pizzas_url, params: { restaurants_pizza: { price: @restaurants_pizza.price, restaurant_id: @restaurants_pizza.restaurant_id } }, as: :json
    end

    assert_response :created
  end

  test "should show restaurants_pizza" do
    get restaurants_pizza_url(@restaurants_pizza), as: :json
    assert_response :success
  end

  test "should update restaurants_pizza" do
    patch restaurants_pizza_url(@restaurants_pizza), params: { restaurants_pizza: { price: @restaurants_pizza.price, restaurant_id: @restaurants_pizza.restaurant_id } }, as: :json
    assert_response :success
  end

  test "should destroy restaurants_pizza" do
    assert_difference("RestaurantsPizza.count", -1) do
      delete restaurants_pizza_url(@restaurants_pizza), as: :json
    end

    assert_response :no_content
  end
end

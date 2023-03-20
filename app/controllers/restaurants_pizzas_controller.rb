class RestaurantsPizzasController < ApplicationController
  before_action :set_restaurants_pizza, only: %i[ show update destroy ]

  # GET /restaurants_pizzas
  def index
    @restaurants_pizzas = RestaurantsPizza.all

    render json: @restaurants_pizzas
  end

  # GET /restaurants_pizzas/1
  def show
    render json: @restaurants_pizza
  end

  # POST /restaurants_pizzas
  def create
    @restaurants_pizza = RestaurantsPizza.new(restaurants_pizza_params)

    if @restaurants_pizza.save
      render json: @restaurants_pizza, status: :created, location: @restaurants_pizza
    else
      render json: @restaurants_pizza.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /restaurants_pizzas/1
  def update
    if @restaurants_pizza.update(restaurants_pizza_params)
      render json: @restaurants_pizza
    else
      render json: @restaurants_pizza.errors, status: :unprocessable_entity
    end
  end

  # DELETE /restaurants_pizzas/1
  def destroy
    @restaurants_pizza.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurants_pizza
      @restaurants_pizza = RestaurantsPizza.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def restaurants_pizza_params
      params.require(:restaurants_pizza).permit(:price, :restaurant_id)
    end
end

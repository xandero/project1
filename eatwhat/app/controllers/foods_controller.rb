class FoodsController < ApplicationController
  def index
  end

  def create
    meal = Meal.find params[:meal_id]
    food = meal.foods.create(food_params)
    redirect_to meal
  end

  def new
    @food = Food.new
    @meal = Meal.find params[:meal_id]
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  def food_params
    params.require(:food).permit(:name, :serving_size, :quantity, :meal_id)
  end
end



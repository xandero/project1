class MealsController < ApplicationController
  def index
    @meals = Meal.all 
  end

  def create
    meal = @current_user.meals.create(meal_params)
    redirect_to meals_path
  end

  def new
    @meal = Meal.new
  end

  def show
    @meal = Meal.find meal_id
  end

  def destroy
  end

  private 
  def meal_params
    params.require(:meal).permit(:type, :meal_date, :protein_guess, :carb_guess, :fat_guess, :user_id)
  end
end

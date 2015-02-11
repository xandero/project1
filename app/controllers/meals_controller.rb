class MealsController < ApplicationController
  def index
    @meals = @current_user.meals
  end

  def create
    meal = @current_user.meals.create(meal_params)
    redirect_to meal
  end

  def new
    @meal = Meal.new
  end

  def show
    @meal = Meal.find params[:id]

    # @meal_carbs = 
    # @meal_protein =
    # @meal_fat = 

  end

  def destroy
    meal = Meal.find params[:id]
    meal.destroy
    redirect_to meals_path
  end

  private 
  def meal_params
    params.require(:meal).permit(:meal_type, :meal_date, :protein_guess, :carb_guess, :fat_guess, :user_id)
  end
end

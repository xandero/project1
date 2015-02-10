class FoodsController < ApplicationController
  def index
  end

  def create
    # @name = params[:name]

    url = "https://api.nutritionix.com/v1_1/search/#{ params[:name] }?results=0:3&fields=item_name,brand_name,item_id,brand_id,nf_serving_size_qty,nf_serving_size_unit&appId=92a57023&appKey=5a11032e7168104fdfa242bd3b62e636"
    raw_data = HTTParty.get url
    parsed_data = JSON.parse(raw_data.body)
    @food_data = parsed_data['hits']
    @meal = params[:meal_id]

  end

  def new
    # @food = Food.new
    @meal = params[:meal_id]

  end

  def quantity
      
    url = "https://api.nutritionix.com/v1_1/item?id=#{ params[:selected_food] }&appId=92a57023&appKey=5a11032e7168104fdfa242bd3b62e636"
    raw_data = HTTParty.get url
    parsed_data = JSON.parse(raw_data.body)
    @food_data = parsed_data
    @meal = params[:meal_id]

    #calculate the value of macros in this amount of food then plug into params
   
    # meal = Meal.find params[:meal_id]
    # food = meal.foods.create(food_params)
    # redirect_to meal

  end

  def food_to_meal
    url = "https://api.nutritionix.com/v1_1/item?id=#{ params[:selected_food] }&appId=92a57023&appKey=5a11032e7168104fdfa242bd3b62e636"
    raw_data = HTTParty.get url
    parsed_data = JSON.parse(raw_data.body)
    @meal = params[:meal_id]

    q = params[:quantity].to_f
    carb_amount = params[:carb_amount].to_f * q
    fat_amount = params[:fat_amount].to_f * q
    protein_amount = params[:protein_amount].to_f * q
   
    # meal = @current_user.meals.foods.create(food_params)
    # redirect_to meal

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



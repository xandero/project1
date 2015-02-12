class FoodsController < ApplicationController
  def index
  end

  def new
    @meal = params[:meal_id]
  end

  def create
    url = "https://api.nutritionix.com/v1_1/search/#{ params[:name] }?results=0:2&fields=item_name,brand_name,item_id,brand_id,nf_serving_size_qty,nf_serving_size_unit&appId=92a57023&appKey=5a11032e7168104fdfa242bd3b62e636"
    raw_data = HTTParty.get url
    parsed_data = JSON.parse(raw_data.body)
    @food_data = parsed_data['hits']
    @meal = params[:meal_id]
  end

  def quantity
    url = "https://api.nutritionix.com/v1_1/item?id=#{ params[:selected_food] }&appId=92a57023&appKey=5a11032e7168104fdfa242bd3b62e636"
    raw_data = HTTParty.get url
    parsed_data = JSON.parse(raw_data.body)
    @food_data = parsed_data
    @meal = params[:meal_id]
  end

  def food_to_meal
    
    q = params[:quantity].to_f
    carb_amount = params[:carb_amount].to_f * q
    fat_amount = params[:fat_amount].to_f * q
    protein_amount = params[:protein_amount].to_f * q 
    @meal = params[:meal_id]
    @food = Food.new
    @food.quantity = params[:serving_size_qty]
    @food.serving_size = params[:serving_size_unit]
    @food.quantity = q
    @food.meal_id = @meal
    @food.name = params[:item_name]
    @food.carb_amount = carb_amount
    @food.fat_amount = fat_amount
    @food.protein_amount = protein_amount
    @food.save

    redirect_to meal_path(@meal)

  end

  def show
  end

  def update
  end

  def destroy
  end

  def food_params
    params.require(:food).permit(:name, :serving_size, :quantity, :meal_id, :carb_amount, :fat_amount, :protein_amount)
  end
end



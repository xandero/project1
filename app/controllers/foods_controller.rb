class FoodsController < ApplicationController
  def index
  end

  def create
    # @name = params[:name]

  url = "https://api.nutritionix.com/v1_1/search/#{ params[:name] }?results=0:3&fields=item_name,brand_name,item_id,brand_id,nf_serving_size_qty,nf_serving_size_unit&appId=92a57023&appKey=5a11032e7168104fdfa242bd3b62e636"
  raw_data = HTTParty.get url
  parsed_data = JSON.parse(raw_data.body)
  @food_data = parsed_data['hits']
<<<<<<< HEAD:app/controllers/foods_controller.rb
=======
  @meal = params[:meal_id]
>>>>>>> API_fiddling:eatwhat/app/controllers/foods_controller.rb

    # meal = Meal.find params[:meal_id]
    # food = meal.foods.create(food_params)
    # redirect_to meal

  end

  def new
    # @food = Food.new
    @meal = params[:meal_id]
 

  end


  def search

 
raise params.inspect

    # @movie_data = JSON.parse raw_data
    # @title = @movie_data['Title']
    # @poster_image = @movie_data['Poster']
    # @director = "Directed by " + @movie_data['Director']
    # @year = "Released in " + @movie_data['Year']
    # @imdbrating = "IMDB Rating: " + @movie_data['imdbRating']
  end

  def select_food

  end

  def enter_quantity
    meal = Meal.find params[:meal_id]
    food = meal.foods.create(food_params)
    redirect_to meal
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



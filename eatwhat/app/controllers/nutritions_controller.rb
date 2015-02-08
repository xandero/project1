class NutritionsController < ApplicationController
  def index
    @nutritions = Nutrition.all 
  end

  def show

  end
end

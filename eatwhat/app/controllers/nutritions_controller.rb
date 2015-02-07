class NutritionsController < ApplicationController
  def index
  end

  def show
    @nutritions = Nutrition.all
  end
end

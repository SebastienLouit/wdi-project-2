class StaticsController < ApplicationController
 
  def home
    @servings = Serving.all
    @meals    = Meal.all
  end


end

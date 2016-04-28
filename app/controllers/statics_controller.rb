class StaticsController < ApplicationController
 
  def home
    @servings = Serving.all
    @meals    = Meal.all
  end

  def map
    @users = User.all
    @servings = Serving.all
    @hash = Gmaps4rails.build_markers(@servings) do |serving, marker|
      marker.lat serving.latitude
      marker.lng serving.longitude
    end
  end


end

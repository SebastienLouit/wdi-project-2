class StaticsController < ApplicationController
 
  def home
    @servings = Serving.all
    @meals    = Meal.all
  end

  def map
    @users = User.all
    @servings = Serving.all
    @hash = Gmaps4rails.build_markers(@servings) do |serving, marker| 
      serving_path = view_context.link_to serving.meal.title, serving_path(serving)
      marker.lat serving.latitude
      marker.lng serving.longitude
      marker.infowindow "#{serving.meal.title}" 
    end
  end


end

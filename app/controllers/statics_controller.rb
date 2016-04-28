class StaticsController < ApplicationController
 
  def home
    @servings = Serving.all
    @meals    = Meal.all
  end

  def map
    @users = User.all
    @servings = Serving.all
    @hash = Gmaps4rails.build_markers(@servings) do |serving, marker| 
      box_text = "<a href='servings/#{serving.id}'>#{serving.meal.title}</a>"
      serving_path = view_context.link_to serving.meal.title, serving_path(serving)
      marker.lat serving.latitude
      marker.lng serving.longitude
      marker.infowindow  box_text
    end
  end


end

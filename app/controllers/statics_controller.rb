class StaticsController < ApplicationController
  before_action :search_params 
  def home
    @servings = Serving.all
    @meals    = Meal.all
  end

  def search_params
    @q = Serving.search(params[:q])
    @servings = @q.result(distinct: true)
  end
end

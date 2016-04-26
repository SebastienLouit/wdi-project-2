class RestrictedController < ApplicationController
  before_action :search_params 
  before_action :authenticate_user!
  def index
  end

  def restricted
  end

  private
  def search_params
 @q = Serving.search(params[:q])
 @servings = @q.result(distinct: true)
  end
end
end

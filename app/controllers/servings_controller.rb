class ServingsController < ApplicationController
  before_action :search_params 
  def index
    @servings = Serving.all
    @meals    = Meal.all
  end

  def new
    @serving  = Serving.new
  end

  def show
    @serving = Serving.find(params[:id])
  end

 def create
   @serving = Serving.new(serving_params)
   @serving.user_id = current_user.id
   if @serving.save
     flash[:success] = "Your serving has now been listed!"
     redirect_to servings_path
   else 
     render "new"
   end 
 end


  def edit
  end

  def destroy
  end

  private
      def serving_params
          params.require(:serving).permit(:meal_id,:day, :price, :number, :location)
      end

      def search_params
        @q = Serving.search(params[:q])
        @servings = @q.result(distinct: true)
      end
end

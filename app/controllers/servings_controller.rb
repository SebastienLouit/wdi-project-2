class ServingsController < ApplicationController
  def index
    @servings = Serving.all
  end

  def new
    @serving = Serving.new
  end

  def show
    @serving = Serving.find(params[:id])
  end

 def create
   @serving = current_user.servings.new(serving_params)
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
          params.require(:serving).permit(:day, :price, :number, :location)
      end
end

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

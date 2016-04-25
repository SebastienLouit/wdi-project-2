class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def new
    @meal = Meal.new
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def create
    @meal = current_user.meals.new(meal_params)
    if params[:commit] == 'standard'
      if @meal.save
        flash[:success] = "Your meal has now been listed!"
        redirect_to meals_path
      else 
        render "new"
      end 
    elsif params[:commit] == 'serving'
      if @meal.save
        flash[:success] = "Your meal has now been listed!"
        redirect_to new_serving_path
      else 
        render "new"
      end 
    end
  end

  def edit
  end

  def update

  end

  def destroy
  end


  private 
    def meal_params
      params.require(:meal).permit(:title, :description, :category, :image )
    end
end
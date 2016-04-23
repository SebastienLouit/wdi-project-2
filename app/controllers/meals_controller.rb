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
    if @meal.save
      flash[:success] = "Your meal has now been listed!"
      redirect_to meals_path
    else 
      render "new"
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
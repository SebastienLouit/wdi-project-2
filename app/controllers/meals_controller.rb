class MealsController < ApplicationController


  def index
    @meal = Meal.find(params[:id])
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
    if params[:commit] == 'Save in your meals'
      if @meal.save
        flash[:success] = "Your meal has now been listed!"
        redirect_to meals_path
      else 
        render "new"
      end 
    elsif params[:commit] == 'Make it a serving !'
      if @meal.save
        flash[:success] = "Your meal has now been listed!"
        redirect_to new_serving_path
      else 
        render "new"
      end 
    end
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = Meal.find(params[:id])
    if @meal.update(meal_params)
      flash[:success] = "Your meal has now been updated!"
      redirect_to @meal
    else 
      redirect_to :back
    end 
  end

  def destroy
  end

  private 
    def meal_params
      params.require(:meal).permit(:title, :description, :category, :image, :graffiti_image )
    end

end
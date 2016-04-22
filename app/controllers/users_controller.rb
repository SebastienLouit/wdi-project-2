class UsersController < ApplicationController
  # this will resrtict unregistered users to see all except below
  before_action :authenticate_user!, except:[:show,:index] 

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def update

    @user = current_user
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :location, :photo, :phone)
  end

end




class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to(user_path(@user))
    else
      render :new
    end
  end

  def show
    @user = User.includes(:attended_events, :hosted_events).find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end

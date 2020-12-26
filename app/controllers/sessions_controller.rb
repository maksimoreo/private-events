class SessionsController < ApplicationController
  def new
    @user
  end

  def create
    @user = User.find_by_username(params[:username])

    if @user.nil?
      flash.now[:alert] = "cannot find user with ID #{params[:username]}"
      render :new
    else
      session['id'] = @user.id
      redirect_to @user
    end
  end

  def destroy
    session.delete(:id)
    redirect_to login_path
  end
end

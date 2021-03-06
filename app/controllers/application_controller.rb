class ApplicationController < ActionController::Base
  def current_user
    User.find(session[:id])
  end

  def logged_in?
    !session[:id].nil? && User.exists?(id: session[:id])
  end

  helper_method :logged_in?
  helper_method :current_user

  def authenticate_user!
    unless logged_in?
      flash[:error] = "You must log in to proceed!"
      redirect_to login_path
    end
  end
end

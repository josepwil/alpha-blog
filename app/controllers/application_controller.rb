class ApplicationController < ActionController::Base
  #makes current_user/logged_in? helper methods available to our views
  helper_method :current_user, :logged_in?

  # methods in ApplicationController are available to all of our other controllers
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    # !! turns current_user into a boolean
    !!current_user 
  end
  

end

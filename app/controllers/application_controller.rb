class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :current_user
  
  def current_user
    if session[:user_id]
      @logged_in_user = User.find(session[:user_id])
    end
  end
  
  
end
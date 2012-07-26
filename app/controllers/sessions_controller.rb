class SessionsController < ApplicationController
  
  def create
    @user = User.find_by_email(params[:email])
    if @user
      if @user.authenticate(params[:password])
        session[:user_id] = @user.id
        
        redirect_to posts_url, :notice => "You have been logged in!"
        return
      end
    end
    redirect_to login_url, :notice => "Login failed!"
  end
  
  def destroy
    reset_session
    redirect_to root_url
  end
  
end
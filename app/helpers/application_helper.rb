module ApplicationHelper
  def logged_in?
    if session[:user_id]
      if User.find_by_id(session[:user_id])
        return true
      else
        return false
      end
    else
      return false
    end
  end
  
  def admin?
    return logged_in?
  end
end

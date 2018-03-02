class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= Profile.find(session[:profile_id]) if session[:profile_id]
  end
  helper_method :current_user

  def admin?
    current_user ||= User.find(session[:profile_id]) if session[:profile_id]
    if current_user != nil && current_user.account_holder_email == "jen@ga.co"
      return true
    else
      return false
    end
  end
  helper_method :admin?
end

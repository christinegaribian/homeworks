class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def login!(user)
    session[:session_token] = user.session_token
  end

  def logout!(user)
    user.reset_session_token!
    session[:session_token] = nil
  end

  def current_user
    return nil if session[:session_token].nil?
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def require_no_login
    return unless current_user
    redirect_to user_url(current_user)
  end

  def require_login
    return if current_user
    redirect_to new_session_url
  end
end

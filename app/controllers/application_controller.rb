class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate

  def authenticate
    p "IN AUTHENTICATE"
    session[:token] ||= SecureRandom.urlsafe_base64(8)
    @current_user = User.find_by_session_token(session[:token])
    if @current_user.nil?
      redirect_to root_url
    else
      @current_user.session_token = session[:token]
    end
  end
end

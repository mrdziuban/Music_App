class SessionsController < ApplicationController
  before_filter :authenticate, except: [:new, :create]

  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    user.session_token = SecureRandom.urlsafe_base64(8)
    user.save
    session[:token] = user.session_token
    redirect_to bands_url
  end

  def destroy
    session[:token] = nil
  end
end

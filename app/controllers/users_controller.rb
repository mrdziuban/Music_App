class UsersController < ApplicationController
  before_filter :authenticate, except: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      msg = UserMailer.activation_email(@user)
      msg.deliver!
      redirect_to root_url
    else
      flash[:notices] = "Could not create new user."
      render :new
    end
  end

  def activate
    @user = User.find(params[:id])
    if @user.activation_token == params[:token]
      @user.activated = true
      @user.save
      redirect_to root_url
    else
      flash[:notices] = "Could not activate"
      redirect_to root_url
    end
  end

  def show
    @user = User.find_by_activation_token(params[:token])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to root_url
    else
      flash[:notices] = "Could not update user."
      render :edit
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to root_url
  end
end

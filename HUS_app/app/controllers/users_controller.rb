class UsersController < ApplicationController

  def login
  end

  def welcome
    if session[:user_id]
      @user ||= User.find_by(id: session[:user_id])
    else
      redirect_to '/login'
    end
  end

  def update
    user = User.find_by(email: params[:session][:email].downcase)
    if User.authenticate(params[:session][:email].downcase,params[:session][:password])
      session[:user_id] = user.id
      redirect_to "/welcome"
    else
      flash.now[:danger] = "Invalid email/password combination"
      render :login
    end
  end

  def destroy
    @user ||= User.find_by(id: session[:user_id])
    if @user != nil
      session.delete(:user_id)
    end
    redirect_to '/login'
  end

end

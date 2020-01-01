class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [:new, :create]
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "You have logged in successfully."
      redirect_to root_path
    else
      flash[:error]= "Something went wrong. Please try again."
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have successfully logged out"
    redirect_to signin_path
  end

    private
    def logged_in_redirect
      if logged_in?
        flash[:error] = "you are already logged in"
        redirect_to root_path
      end
    end
end
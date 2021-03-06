class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  		flash[:success] = "Welcome back, #{user.name}!"
  		sign_in user
  		redirect_back_or user
  	else
  		flash.now[:error] = "Введите корректные данные!"
  		render 'new'
  	end
  end

  def destroy
  	sign_out current_user
  	redirect_to root_path
  end
end

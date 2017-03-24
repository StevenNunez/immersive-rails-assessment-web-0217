class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by(username: user_params[:username])
    if user && user.authenticate(user_params[:password])
      session[:user_id] = user.id
      redirect_to guests_path
    else
      redirect_to new_session_path, notice: "Invalid username or password"
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end

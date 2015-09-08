class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to homes_path, notice: "Logged in"
    else
      flash[:alert] = "Read Error"
      render :new
    end
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit([:first_name, :last_name, :email, :password, :password_confirmation])
  end
end

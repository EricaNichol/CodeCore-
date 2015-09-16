class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by_email params[:email]
    respond_to do |format|
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        format.html { redirect_to homes_path, notice: "Signed in successfully" }
        format.js { render :create_success }

      else
        # flash[:alert] = "Wrong Credentials"
        format.html { render :new }
        format.js { render :create_failure }
      end
    end
    end

  def destroy
    session[:user_id] = nil
    redirect_to homes_path, notice: "Logged Out!"
  end
end

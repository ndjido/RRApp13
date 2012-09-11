class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = login(params[:session][:email], params[:session][:password])
    if user
      redirect_back_or_to root_path, :notice => "Logged in"
    else
      flash.now.alert = "Email or password invalid"
      render :new
    end
  end
  
  def destroy
    logout
    redirect_to root_url, :notice => "Logged out"
  end

end

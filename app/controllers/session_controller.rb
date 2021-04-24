class SessionController < ApplicationController
  def login
  end

  def create
    user = User.find_by(email:params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      render :login
    end
  end
  
  #def create
    #user = User.find_by(email:params[:session][:email])
    #if user &&
      #user.authenticate(params[:session][:password])
      #session[:user_id] = user.id
      #redirect_to root_path
    #else
      #render :login
    #end
  #end

  def logout
    session.delete(:user_id)
    redirect_to root_path
    end
    
end

class SessionsController < ApplicationController
  def new
    @title = 'Login'
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      
    else
      flash.now[:error] = 'Invalid email/password combination'
      @title = 'Login'
      render 'new'
    end
  end
  def destroy

  end
end

class SessionsController < ApplicationController
  def new
    @title = 'Login'
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_back_or root_url
    else
      flash.now[:error] = 'Invalid email/password combination'
      @title = 'Login'
      render 'new'
    end
  end
  def destroy
    log_out
    redirect_to root_url
  end
end

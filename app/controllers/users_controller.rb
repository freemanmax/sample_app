class UsersController < ApplicationController
  before_action :loged_in_user, only: [:index, :edit, :update]
  before_action :correct_user,   only: [:edit, :update]

  def index
     @users = User.all
     @title = 'All users'
  end
  def show
     @user = User.find(params[:id])
     @title = @user.name
  end
  def new
     @title = 'Register'
     @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  def edit
    @user = User.find(params[:id])
    @title = 'Edit user'
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile Updated"
      redirect_to @user
    else
      @title = 'Edit user'
      render 'edit'
    end
  end
  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    def loged_in_user
      unless loged_in?
         store_location
         redirect_to login_url, notice: "Please sign in."
      end 
    end
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end

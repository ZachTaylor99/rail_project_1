class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @articles = @user.articles
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to the Website #{@user.username}, you have successfully signed up."
      redirect_to articles_path
    else
      render "new"
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end

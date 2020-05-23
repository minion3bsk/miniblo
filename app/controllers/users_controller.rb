class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id]) if params[:id]
    @articles = @user.articles
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to("/")
  end  
end

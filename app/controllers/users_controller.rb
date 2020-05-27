class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = User.find(params[:id]) if params[:id]
    @image = @user.image
    @username = @user.username
    @profile = @user.profile
    @articles = @user.articles
    @id = @user.id
  end
  
  def edit
    @user = User.find(params[:id]) if params[:id]
    @username = @user.username
    @image = @user.image
    @profile = @user.profile
  end
  
  def update
    current_user.update(user_params)
    redirect_to("/")
  end  
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to("/")
  end  
  
  def user_params
    params.require(:user).permit(:username, :profile, :image)
  end
end

class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) if params[:id]
    @image = @user.image
    @username = @user.username
    @profile = @user.profile
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
    params.require(:user).permit(:username, :profile)
  end
end

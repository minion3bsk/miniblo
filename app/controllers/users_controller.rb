class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) if params[:id]
    @name = user.username
    @image = @user.image
    @profile = @user.profile
  end
  
  def edit
    
  end
  
  def update
  end  
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to("/")
  end  
  
  def user_params
    params.require(:user).permit(:name, :email, :image, :profile)
  end
end

class ArticlesController < ApplicationController
 before_action :authenticate_user!, except: :index
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end  
  
  def create
    Article.create(title: article_params[:title], text: article_params[:text], user_id: current_user.id)
  end    
  
  private
  def article_params
    params.require(:article).permit(:text,:title)
  end  
end

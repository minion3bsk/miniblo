class ArticlesController < ApplicationController
 before_action :authenticate_user!, except: [:index,:show]
  def index
    @articles = Article.all.order(id: "DESC")
  end
  
  def new
    @article = Article.new
  end  
  
  def create
    Article.create(title: article_params[:title], text: article_params[:text], user_id: current_user.id)
  end  
  
  def show
    @article = Article.find(params[:id])
  end  
  
  private
  def article_params
    params.require(:article).permit(:text,:title)
  end  
end

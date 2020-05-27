class LikesController < ApplicationController
  def create
    @like = Like.create(user_id: current_user.id, article_id: params[:article_id])
    @likes = Like.where(article_id: params[:articleid])
    @article = Article.all
    redirect_to root_path
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, article_id: params[:id])
    like.destroy
    @likes = Like.where(article_id: params[:id])
    @articles = Article.all
  end
end

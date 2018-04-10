class CommentsController < ApplicationController
  before_action :require_login

  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    @comment.save
    redirect_to article_path(@comment.article)
    flash.notice = "Added Comment!"
  end

  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end

end

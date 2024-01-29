class CommentsController < ApplicationController
  def create
    @articles =Article.find(params[:article_id])
    @comment = @articles.comments.create(comment_params)
  end
  private
  def comment_params
    params.require(:comment).permit(:commenter, :body, :status)
  end
end

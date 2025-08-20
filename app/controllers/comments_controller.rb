class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params)
    if @comment.save
      redirect_to @article, notice: 'Comment was successfully added.'
    else
      redirect_to @article, alert: 'Comment cannot be blank.'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @article = @comment.article
    @comment.destroy
    redirect_to @article, notice: 'Comment was successfully deleted.'
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end

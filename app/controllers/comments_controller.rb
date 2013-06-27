class CommentsController < ApplicationController
  http_basic_authenticate_with name: "wanmen", password: "secret", only: :destroy
  def create
    @review = Review.find(params[:review_id])
    @comment = @review.comments.create(params[:comment])
    if @comment.save 
      redirect_to (:back)
    end
  end
  def destroy
    @review = Review.find(params[:review_id])
    @comment = @review.comments.find(params[:id])
    if @comment.destroy
      redirect_to (:back)
    end
  end
end
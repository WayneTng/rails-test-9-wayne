class CommentsController < ApplicationController
  def index
    @comments = Comment.includes(:replies).where(parent_id: nil)
  end

  def new
    @comment = Comment.new
    @parent_id = params[:parent]
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = User.first.id
    @comment.save

    redirect_to root_path
  end

  private

  def comment_params
    data = params.require(:comment).permit(:message, 
                                           :parent_id)
  end
end

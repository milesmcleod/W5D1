class CommentsController < ApplicationController
  before_action :require_logged_in

  def new
    render :new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.author_id = current_user.id
    if @comment.save
      if @comment.commentable_type == 'User'
        redirect_to user_url(@comment.commentable)
      else
        redirect_to goal_url(@comment.commentable)
      end
    else
      flash[:errors] = @comment.errors.full_messages
      redirect_to user_url(@comment.commentable)
    end
  end

  def destroy

  end

  def comment_params
    params.require(:comment).permit(:body, :commentable_id, :commentable_type)
  end
end

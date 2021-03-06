class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render json: @comments
  end

  def show
    @comment = Comment.find(params[:id])
    render json: @comment
  end

  def create
    @comment = Comment.create(comment_params)
    render json: @comment
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :user_id, :submission_id, :comment_id)
    end
end

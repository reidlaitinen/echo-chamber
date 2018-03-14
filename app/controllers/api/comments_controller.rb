class Api::CommentsController < ApplicationController

  before_action :set_post, only: [:index]
  before_action :set_comment, only: [:destroy, :update]

  def index
    render json: Comment.where(post_id: @post.id)
  end

  def create
    comment = Comment.create(comment_params)
    if comment.save
      render json: comment
    else
      render json: {errors: @comment.errors.full_messages.join(',')}, status: 422
    end
  end

  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: {errors: @comment.errors.full_messages.join(',')}, status: 422
    end
  end

  def destroy
    @comment.destroy
  end

  private

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def set_post
      @post = Post.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:author, :post_id, :text, :image, :likes, :dislikes)
    end

end

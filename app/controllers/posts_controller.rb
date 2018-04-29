class PostsController < ApplicationController
  def index
    @posts = Post.order("created_at DESC")
    render json: @posts
  end

  def create
    @post = Post.create(post_params)
    render json: @post
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    render json: @post
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      head :no_content, status: :ok
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

private

  def post_params
    params.require(:post).permit(:title, :body, :date)
  end
end

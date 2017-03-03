class PostsController < ApplicationController
 
  def index
    @posts = Post.page(3).without_count

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to root_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end

  def post_params
    params.require(:post).permit(:user_name, :title, :body)
  end
end

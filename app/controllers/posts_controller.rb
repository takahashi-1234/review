class PostsController < ApplicationController


  def create
    post=Post.new(post_params)
    post.user_id=current_user.id
    post.save
    redirect_to posts_path
  end

  def index
    @posts=Post.all
    @user=User.find(current_user.id)
    @post=Post.new
  end

  def show
    @post=Post.find(params[:id])
    @comment=Comment.new
  end

  def destroy
    post=Post.find(params[:id])
    post.destroy
    redirect_to posts_path
  end

  def edit
    @post=Post.find(params[:id])
  end

  def update
    post=Post.find(params[:id])
    post.update(post_params)
    redirect_to posts_path
  end
  private
  def post_params
    params.require(:post).permit(:name,:body,:post_image,:protein_type,:rate)
  end
end
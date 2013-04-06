class PostsController < ApplicationController
	before_filter :authenticate_user!

	def new
		@post = current_user.posts.new
	end

  def create
    @post = current_user.posts.new(params[:post])
    if @post.save
      redirect_to posts_path, :notice => 'Post added successfully!'
    else
      redirect_to new_post_path, :notice => 'Please complete all fields'
    end
  end

  def index
    @user = current_user
    @posts = @user.posts
  end

  def destroy
    @post = Post.find(params[:id])
    Post.destroy(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    record = Post.find(params[:id])
    if record.update_attributes(params[:post])
      redirect_to posts_path
    end
  end
	
end

class PostsController < ApplicationController
	before_filter :authenticate_user!

	def new
		@post = Post.new
	end

  def create
    @user = current_user
    @post = @user.posts.create!(params[:post])
    if @post.save
      redirect_to(@post)
    end
  end
	
end

class PostsController < ApplicationController
  #before_action :require_login, only: [:new, :create]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end
=begin
  private
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to create a post"
      redirect_to new_login_url #to be added later
    end
  end 
=end
end

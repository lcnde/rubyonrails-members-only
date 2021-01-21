class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show] #forces the user to be authenticated

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path #I have to redirect to home since I have no show action at the moment
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
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

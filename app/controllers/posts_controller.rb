class PostsController < ApplicationController
  before_action :require_login, only: [:new, :create]

  def 

  private
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to create a post"
      redirect_to new_login_url #to be added later
    end
  end
end

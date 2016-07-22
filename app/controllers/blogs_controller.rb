class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @posts = Post.all
  end
end

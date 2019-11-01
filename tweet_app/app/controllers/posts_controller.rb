class PostsController < ApplicationController
  def index
    @posts = Post.all.order(content: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end
end

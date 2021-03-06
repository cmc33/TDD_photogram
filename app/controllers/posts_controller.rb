class PostsController < ApplicationController

def index
end

def new
  @posts = Post.new
end

def create
    @post = Post.create(post_params)
  end

private

  def post_params
    params.require(:post).permit(:caption, :image)
  end

end

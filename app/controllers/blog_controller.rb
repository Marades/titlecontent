class BlogController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def post
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.save
    
    redirect_to '/'
    
  end
  
end

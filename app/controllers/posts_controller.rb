class PostsController < ApplicationController
  def index #インデックスアクションを実行した
    @posts = Post.all
  end

  def new 
    
  end

  def create
    Post.create(content: params[:content])
  end  
end

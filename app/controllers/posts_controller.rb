class PostsController < ApplicationController
  def index #インデックスアクションを実行した
    @posts = Post.all.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end  

  def checked
    post = Post.find(id: prams[:id])
    if post.checked
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(id: prams[:id])
    render json: {post: name}
  end
end

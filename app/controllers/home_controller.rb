class HomeController < ApplicationController
  def index
    @nowposts = Post.all.order(created_at: :desc)
    @lateposts = Post.all.order(created_at: :desc)
  end

  def edit
  
  end

  def create
    @post = Post.new(
      title: params[:title],
      detail: params[:detail],
      time_start: params[:timeStart],
      time_end: params[:timeEnd],
      user: params[:user],
      url: params[:url]
    )
    if @post.save
      flash[:notice] = "予定を追加しました！"
      redirect_to("/home/index")
    else
      render("/home/edit")
    end
  end
end

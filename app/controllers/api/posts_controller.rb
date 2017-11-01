class Api::PostsController < ApplicationController
  # before_action :deny_access_if_not_logged_in

  def index
    @posts = Post.all 
    render :index 
  end


  def create
    @post = Post.new(post_params)

    if @post.save
      render :show
    else
      render json: @post.errors.full_messages, status: 422
    end 

  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      render :show
    else
      render json: @post.errors.full_messages, status: 422
    end

  end

  def destroy
    @post = Post.find(params[:id])

    if @post
      @post.destroy
      render :show
    else
      render json: ["Post does not exist"], status: 404
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :description)
  end 

end

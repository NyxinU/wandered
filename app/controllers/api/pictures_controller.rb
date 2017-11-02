class Api::PicturesController < ApplicationController
  
  def create
    @picture = Picture.new(pic_params)
    if @picture.save 
      render :show 
    else 
      render json: @picture.errors.full_messages
    end 
  end

  def index
    @pictures = Picture.where(post_id: params[:postId])
    render :index 
  end

  def destroy
    @picture = Picture.find(params[:id])

    if @picture 
      @picture.destroy 
      render :show 
    else 
      render json: ["Picture does not exist"], status: 404
    end 
  end

  private 

  def pic_params
    params.require(:picture).permit(:url, :post_id, :trip_id)
  end 
end

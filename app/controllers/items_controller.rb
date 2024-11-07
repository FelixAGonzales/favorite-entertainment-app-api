class ItemsController < ApplicationController
  def index
    @items = Item.all
    render :index
  end

  def show
    @item = Item.find_by(id: params[:id])
    render :show
  end

  def create
    @item = Item.new(
      name: params[:name],
      image_url: params[:image_url],
      description: params[:description],
      category: params[:category],
    )
    if @item.save
      render :show
    else
      render json: {errors: @item.errors.full_messages}
    end
  end

end

class FavoritesController < ApplicationController
  
  def index
    @favorites = Favorite.where(user_id: current_user.id)
    render :index    
  end
  
  def create
    @favorite = Favorite.new(
      user_id: current_user.id,
      item_id: params[:item_id]
    )
    @favorite.save
    render :show
  end

  def destroy
    @favorite = Favorite.find_by(id: params[:id])
    @favorite.destroy
    render json: {mesage: "favorite removed"}
  end
end

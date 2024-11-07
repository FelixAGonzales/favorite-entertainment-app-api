class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new(
      user_id: current_user.id,
      item_id: params[:item_id]
    )
    @favorite.save
    render :show
  end
end

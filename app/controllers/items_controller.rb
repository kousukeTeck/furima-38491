class ItemsController < ApplicationController

  def index
  end

  def new
    @item = Item.new
  end

  private
  def item_params
    params.require(:item).permit(:image, :name, :description, :category_id, :status_id, :cost_id, :prefecture_id, :shopping_date_id, :price).merge(user_id: current_user.id)
  end
end

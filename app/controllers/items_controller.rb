class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @items = Item.order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:content, :image).merge(user_id: current_user.id)
    params.require(:item).permit(:items_name, :state_id, :region_id, :postage_id, :shipping_date_id, :category_id, :explain, :user,
                                 :price)
  end
end
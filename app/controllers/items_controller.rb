class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @items = Item.all.order('created_at DESC')
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
    params.require(:item).permit(:content, :image, :items_name, :state_id, :region_id, :postage_id, :shipping_date_id,
                                 :category_id, :explain, :user_id, :price).merge(user_id: current_user.id)
  end
end

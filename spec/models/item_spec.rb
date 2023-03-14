require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '出品機能の保存' do
    context '出品が保存できる場合' do
      it '全ての項目が入力されていれば保存できる' do
        expect(@item).to be_valid
      end
    end
    context '出品が保存できない場合' do
      it 'items_nameが空では保存できない' do
        @item.items_name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Items name can't be blank")
      end
      it 'priceが空では保存できない' do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
      it 'region_idが空では保存できない' do
        @item.region_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include('Region is not a number')
      end
      it 'postage_idが空では保存できない' do
        @item.postage_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include('Postage is not a number')
      end
      it 'shipping_date_idが空では保存できない' do
        @item.shipping_date_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include('Shipping date is not a number')
      end
      it 'explainが空では保存できない' do
        @item.explain = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Explain can't be blank")
      end
      it 'category_idが空では保存できない' do
        @item.category_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include('Category is not a number')
      end
      it 'state_idが空では保存できない' do
        @item.state_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include('State is not a number')
      end
      it '販売価格が￥300より少ない時は出品できない' do
        @item.price = '299'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price must be greater than or equal to 300')
      end
      it '販売価格が￥9999999より多い時は出品できない' do
        @item.price = '10_000_000'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price must be an integer')
      end
      it '販売価格は半角数字でないと登録できない' do
        @item.price = 'あいうえお'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price is not a number')
      end
    end
  end
end

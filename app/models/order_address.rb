class OrderAddress
  include ActiveModel::Model
  attr_accessor :post_code, :region_id, :city, :address, :building_name, :phone_number, :purchase, :user_id, :item_id, :token

  validates :post_code, presence: true, format: { with: /\A[0-9]{3}-[0-9]{4}\z/ }
  validates :region_id, presence: true
  validates :city, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, format: { with: /\A\d{10,11}\z/ }
  validates :user_id, presence: true
  validates :item_id, presence: true
  validates :token, presence: true

  def save
    purchase = Purchase.create(item_id: item_id, user_id: user_id)
    ShippingAddress.create(post_code: post_code, region_id: region_id, city: city, address: address,
                           building_name: building_name, phone_number: phone_number, purchase: purchase)
  end
end

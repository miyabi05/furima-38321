class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :state
  belongs_to :category
  belongs_to :postage
  belongs_to :region
  belongs_to :shipping_date
  belongs_to :user
  has_one_attached :image
  has_one :purchase

  validates :items_name, presence: true
  validates :state_id, numericality: { other_than: 1 }
  validates :category_id, numericality: { other_than: 1 }
  validates :postage_id, numericality: { other_than: 1 }
  validates :region_id, numericality: { other_than: 1 }
  validates :shipping_date_id, numericality: { other_than: 1 }
  validates :price, presence: true,
                    numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_equal_to: 9_999_999 }
  validates :explain, presence: true
  validates :image, presence: true
end

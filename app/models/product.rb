class Product < ApplicationRecord
  has_many :reviews
  has_many :order_items

  validates :name, :description, :image_url, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
end

# :quantity_in_stock,  :category_id,
# belongs_to :category

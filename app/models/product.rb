class Product < ApplicationRecord
  belongs_to :category
  has_many :reviews
  has_many :order_items

  validates :name, :description, :price, :quantity_in_stock, :category_id, :image_url, presence: true
  validates :price, :quantity_in_stock, numericality: { greater_than_or_equal_to: 0 }
end

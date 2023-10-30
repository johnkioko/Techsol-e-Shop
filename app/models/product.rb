class Product < ApplicationRecord
  has_many :reviews
  has_many :order_items

  validates :name, :description, :image_url, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.00 }
  validates :image_url, :format => {
    :with => %r{\.(gif|jpg|png)$}i,
    :message => 'must be a URL for GIF, JPG or PNG image.'
  }

end

# :quantity_in_stock,  :category_id,
# belongs_to :category

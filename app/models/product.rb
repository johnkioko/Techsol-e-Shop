class Product < ApplicationRecord
  has_many :reviews
  has_many :order_items
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  validates :name, :description, :image_url, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.00 }

  validates :image_url, format: {
  with: /\A.*\.(gif|jpg|jpeg|png)\z/i,
  message: 'must be a URL for GIF, JPG or PNG image.',
  multiline: true
}

private
 # ensure that there are no line items referencing this product
 def ensure_not_referenced_by_any_line_item
  if line_items.empty?
  return true
  else
  errors.add(:base, 'Line Items present')
  return false
  end
  end
end

# :quantity_in_stock,  :category_id,
# belongs_to :category

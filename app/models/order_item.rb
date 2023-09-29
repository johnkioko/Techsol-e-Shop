class OrderItem < ApplicationRecord
  # Associations: Order items belong to an order and a product.
  belongs_to :order
  belongs_to :product

  # Validations: Ensure that the quantity and total_price are greater than or equal to 0.
  validates :order_id, :product_id, :quantity, :total_price, presence: true
  validates :quantity, numericality: { greater_than_or_equal_to: 1 }
  validates :total_price, numericality: { greater_than_or_equal_to: 0 }
end

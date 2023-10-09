class Cart < ApplicationRecord
  # Associations: Carts belong to users and contain products.
  # Carts can be thought of as a temporary association between users and products.

  belongs_to :user
  belongs_to :product
  has_many :cart_items

  # Add a product to the cart.
  def add_product(product)
    # Check if the product is already in the cart.
    existing_item = cart_items.find_by(product_id: product.id)

    if existing_item
      # If the product is already in the cart, increment its quantity.
      existing_item.quantity += 1
      existing_item.save
    else
      # If the product is not in the cart, create a new cart item.
      cart_items.create(product: product, quantity: 1)
    end
  end

  # Validations: Add validations as needed for your cart-related attributes.
  validates :user_id, :product_id, :quantity, presence: true
  validates :quantity, numericality: { greater_than_or_equal_to: 1 }
end

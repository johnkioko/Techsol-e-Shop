class Cart < ApplicationRecord
  # Associations: Carts belong to users and contain products.
  # Carts can be thought of as a temporary association between users and products.

  belongs_to :user
  belongs_to :product

  # Validations: Add validations as needed for your cart-related attributes.
end

class Review < ApplicationRecord
  # Associations: Reviews belong to a user and a product.
  belongs_to :user
  belongs_to :product

  # Validations: Ensure that a rating is provided (e.g., 1 to 5).
  validates :rating, :comment, :user_id, :product_id, presence: true
  validates :rating, inclusion: { in: 1..5 }
end

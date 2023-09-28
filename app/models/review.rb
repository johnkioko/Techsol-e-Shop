class Review < ApplicationRecord
  # Associations: Reviews belong to a user and a product.
  belongs_to :user
  belongs_to :product

  # Validations: Ensure that a rating is provided (e.g., 1 to 5).
  validates :rating, presence: true, inclusion: { in: 1..5 }
end

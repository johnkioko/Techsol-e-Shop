class Order < ApplicationRecord
  # Associations: Orders belong to a user and can have multiple order items.
  belongs_to :user
  has_many :order_items

  # Validations: Ensure that an order has a status (e.g., "pending," "shipped").
  validates :status, presence: true
end

class Order < ApplicationRecord
  # Associations: Orders belong to a user and can have multiple order items.
  belongs_to :user
  has_many :order_items
  has_one :shipment  # If implementing shipments

  # Validations: Ensure that an order has a status (e.g., "pending," "shipped").
  validates :user_id, :order_date, :status, presence: true
  validates :status, inclusion: { in: ['pending', 'shipped', 'completed'] }
end

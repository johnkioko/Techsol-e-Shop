class Shipment < ApplicationRecord
  # Associations: Shipments belong to an order.
  belongs_to :order

  validates :order_id, :tracking_number, :delivery_date, :status, presence: true
  # Add validation rules as needed for tracking number, delivery date, etc.
end

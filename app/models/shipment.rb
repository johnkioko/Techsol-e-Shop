class Shipment < ApplicationRecord
  # Associations: Shipments belong to an order.
  belongs_to :order

  # Validations: Add validations as needed for your shipment-related attributes.
end

class Payment < ApplicationRecord
  # Associations: Payments belong to an order.
  belongs_to :order

  # Validations: Add validations as needed for your payment-related attributes.
end

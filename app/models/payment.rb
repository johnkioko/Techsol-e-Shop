class Payment < ApplicationRecord
  # Associations: Payments belong to an order.
  belongs_to :order

  validates :order_id, :payment_method, :card_number, :expiration_date, :transaction_status, presence: true
  # Add validation rules for card number, expiration date, etc., as needed.
end

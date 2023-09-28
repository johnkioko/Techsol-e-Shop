class Promotion < ApplicationRecord
    # Associations: No specific associations.

    # Validations: Add validations as needed for your promotion-related attributes.
    validates :code, :discount_percentage, :valid_from, :valid_until, presence: true
end

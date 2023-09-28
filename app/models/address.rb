class Address < ApplicationRecord
  # Associations: Addresses belong to a user.
  belongs_to :user
  
  # Validations: Ensure that all address fields are present.
  validates :estate, :city, :postal_code, :country, presence: true
end

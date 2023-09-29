class User < ApplicationRecord
  has_many :addresses
  has_many :reviews
  has_many :orders

  validates :email, presence: true, uniqueness: true
  validates :password, :first_name, :last_name, :role, presence: true
  # Add password validation rules as needed (e.g., length, complexity).
end

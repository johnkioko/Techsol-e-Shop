class User < ApplicationRecord
  has_many :addresses
  has_many :reviews
  has_many :orders

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end

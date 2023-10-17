class Admin < ApplicationRecord
    has_many :products, class_name: 'Product', foreign_key: 'admin_id'
    has_many :categories, class_name: 'Category', foreign_key: 'admin_id'

    validates :username, presence: true, uniqueness: true, length: { minimum: 4, maximum: 30 }
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, length: { minimum: 8 }
end

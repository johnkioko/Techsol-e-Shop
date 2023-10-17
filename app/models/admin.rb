class Admin < ApplicationRecord
    has_many :products, class_name: 'Product', foreign_key: 'admin_id'
    has_many :categories, class_name: 'Category', foreign_key: 'admin_id'

    
end

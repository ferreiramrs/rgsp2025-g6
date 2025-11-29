class Product < ApplicationRecord
    validates :name, :price, :quantity, presence: true
end

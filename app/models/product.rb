class Product < ApplicationRecord
    validates :name, :price, :quantity, presence: true
    validates :name, uniqueness: true
    

end

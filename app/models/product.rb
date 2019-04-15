class Product < ApplicationRecord
    has_many :product_skus
    has_many :tickets
end

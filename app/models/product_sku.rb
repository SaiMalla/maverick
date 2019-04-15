class ProductSku < ApplicationRecord
  belongs_to :product
  has_many :tickets
end

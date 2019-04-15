class Customer < ApplicationRecord
    belongs_to :age
    has_many :tickets 
end

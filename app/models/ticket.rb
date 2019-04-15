class Ticket < ApplicationRecord
  
  validates_presence_of :name
  
  belongs_to :customer
  belongs_to :caller_type
  belongs_to :ticket_type
  belongs_to :ticket_sub_type
  belongs_to :product
  belongs_to :product_sku
  belongs_to :ticket_status
  belongs_to :ticket_sub_status
  belongs_to :ticket_attachment
  belongs_to :employee
  belongs_to :source
  
  
end

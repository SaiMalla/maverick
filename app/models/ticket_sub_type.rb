class TicketSubType < ApplicationRecord
  belongs_to :ticket_type
  has_many :tickets
end

class TicketSubStatus < ApplicationRecord
  belongs_to :ticket_status
  has_many :tickets
end

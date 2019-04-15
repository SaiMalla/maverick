class CreateTicketSubStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_sub_statuses do |t|
      t.string :ticketsubstatus
      t.integer :creatredby
      t.references :ticket_status, foreign_key: true

      t.timestamps
    end
  end
end

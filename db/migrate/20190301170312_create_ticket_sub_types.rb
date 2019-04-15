class CreateTicketSubTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_sub_types do |t|
      t.string :ticketsubtype
      t.integer :createdby
      t.boolean :active
      t.references :ticket_type, foreign_key: true

      t.timestamps
    end
  end
end

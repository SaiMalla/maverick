class AddTicketIdToTagUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :tag_users, :ticket, foreign_key: true
  end
end

class RemoveTaguserFromTickets < ActiveRecord::Migration[5.2]
  def change
    remove_reference :tickets, :tag_user, foreign_key: true
  end
end

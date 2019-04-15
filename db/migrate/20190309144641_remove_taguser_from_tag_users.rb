class RemoveTaguserFromTagUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :tag_users, :tagusers, :string
  end
end

class RemoveAgeIdFromCustomer < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :age_id, :string
  end
end

class AddAgeIdToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_reference :customers, :age, foreign_key: true
  end
end

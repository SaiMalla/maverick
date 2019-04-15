class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :age_id, foreign_key: true
      t.boolean :gender
      t.string :email
      t.integer :mobilenumber
      t.string :address
      t.string :pincode
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end

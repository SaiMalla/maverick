class CreateTagUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_users do |t|
      t.references :ticket, foreign_key: true
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end

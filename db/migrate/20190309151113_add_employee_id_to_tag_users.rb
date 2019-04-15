class AddEmployeeIdToTagUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :tag_users, :employee, foreign_key: true
  end
end

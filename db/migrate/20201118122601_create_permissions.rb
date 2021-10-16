class CreatePermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :permissions do |t|
      t.integer :user_id
      t.integer :role_id

      t.timestamps null: false
    end
    add_index :permissions, :user_id
    add_index :permissions, :role_id
  end
end

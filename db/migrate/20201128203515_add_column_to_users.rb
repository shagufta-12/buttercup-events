class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username, :string
    add_index :users, :username
  end
end

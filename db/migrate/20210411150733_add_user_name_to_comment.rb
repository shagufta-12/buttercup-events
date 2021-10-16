class AddUserNameToComment < ActiveRecord::Migration[5.0]
  def change
  	add_column :comments, :username, :string
    add_index :comments, :username
  end
end

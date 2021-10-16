class RenameColumnInEvents < ActiveRecord::Migration[5.0]
  def change
  	rename_column :events, :tickets, :tickets_left
  end
end

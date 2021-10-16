class AddColumnToVenues < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :seats, :integer
  end
end

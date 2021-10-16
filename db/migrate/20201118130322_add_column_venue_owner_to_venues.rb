class AddColumnVenueOwnerToVenues < ActiveRecord::Migration[5.0]
  def change
  	add_column :venues, :user_id, :integer
    add_index :venues, :user_id
  end
end

class AddVenueIdToComment < ActiveRecord::Migration[5.0]
  def change
  	add_column :comments, :venue_id, :integer
    add_index :comments, :venue_id
  end
end

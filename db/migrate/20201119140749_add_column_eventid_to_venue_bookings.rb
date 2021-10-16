class AddColumnEventidToVenueBookings < ActiveRecord::Migration[5.0]
  def change
  	add_column :venue_bookings, :event_id, :integer
    add_index :venue_bookings, :event_id
  end
end

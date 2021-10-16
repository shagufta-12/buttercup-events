class RemoveColumnFromEventsAndEventBookings < ActiveRecord::Migration[5.0]
  def change
  	remove_column :events, :seats
  	add_column :events, :tickets, :integer
  	remove_column :event_bookings, :seats
  	add_column :event_bookings, :tickets, :integer
  end
end

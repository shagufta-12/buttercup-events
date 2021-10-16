class AddColumnToEventBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :event_bookings, :seats, :integer
  end
end

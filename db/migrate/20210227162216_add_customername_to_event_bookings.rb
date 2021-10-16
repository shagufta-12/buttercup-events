class AddCustomernameToEventBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :event_bookings, :customername, :string
  end
end

class AddAadharToEventBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :event_bookings, :aadhar, :integer, limit: 8
    add_index :event_bookings, :aadhar
  end
end

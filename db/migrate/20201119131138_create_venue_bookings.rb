class CreateVenueBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :venue_bookings do |t|
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.integer :venue_id

      t.timestamps null: false
    end
    add_index :venue_bookings, :venue_id
  end
end

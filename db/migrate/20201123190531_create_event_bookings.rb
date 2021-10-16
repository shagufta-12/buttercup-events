class CreateEventBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :event_bookings do |t|
      t.integer :event_id
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :event_bookings, :event_id
    add_index :event_bookings, :user_id
  end
end

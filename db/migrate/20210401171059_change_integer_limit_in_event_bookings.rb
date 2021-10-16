class ChangeIntegerLimitInEventBookings < ActiveRecord::Migration[5.0]	 
	def change
    change_column :event_bookings, :aadhar, :integer, limit: 8
 	end 
end

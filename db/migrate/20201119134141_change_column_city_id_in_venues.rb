class ChangeColumnCityIdInVenues < ActiveRecord::Migration[5.0]
  def change
  	remove_column :venues, :city_id
  	add_column :venues, :locality_id, :integer
    add_index :venues, :locality_id
  end
end

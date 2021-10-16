class DeleteColumnCityIdFromEvents < ActiveRecord::Migration[5.0]
  def change
  	remove_column :events, :city_id
  end
end

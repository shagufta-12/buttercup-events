class CreateVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.integer :city_id
      t.text :address

      t.timestamps null: false
    end
    add_index :venues, :city_id
  end
end

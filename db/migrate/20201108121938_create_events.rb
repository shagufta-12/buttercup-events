class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.integer :venue_id
      t.integer :city_id
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.float :entry_fee
      t.string :status
      t.integer :locality_id
      t.timestamps null: false
    end
    add_index :events, :locality_id
    add_index :events, :venue_id
    add_index :events, :city_id
    add_index :name
  end
end

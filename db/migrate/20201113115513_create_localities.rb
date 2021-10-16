class CreateLocalities < ActiveRecord::Migration[5.0]
  def change
    create_table :localities do |t|
      t.string :name
      t.integer :city_id
      t.timestamps null: false
    end
    add_index :localities, :city_id
  end
end

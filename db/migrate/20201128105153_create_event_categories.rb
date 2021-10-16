class CreateEventCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :event_categories do |t|
      t.integer :event_id
      t.integer :category_id

      t.timestamps null: false
    end
    add_index :event_categories, :event_id
    add_index :event_categories, :category_id
  end
end

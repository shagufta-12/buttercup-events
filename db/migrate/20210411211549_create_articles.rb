class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :fname
      t.integer :age,     limit: 8
      t.string :address
      t.integer :phnmbr,  limit: 8
      t.string :mname

      t.timestamps null: false
    end
  end
end

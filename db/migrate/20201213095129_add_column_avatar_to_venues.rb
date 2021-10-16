class AddColumnAvatarToVenues < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :avatar, :string
  end
end

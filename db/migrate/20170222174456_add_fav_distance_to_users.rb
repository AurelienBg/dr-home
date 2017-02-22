class AddFavDistanceToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fav_distance, :integer, null: false, default: 50
  end
end

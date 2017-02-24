class ChangeRadiusDefaultInUsers < ActiveRecord::Migration[5.0]
  def change
  	change_column :users, :radius, :integer, null: 10, default: 10
  end
end

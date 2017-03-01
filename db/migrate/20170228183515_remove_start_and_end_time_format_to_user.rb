class RemoveStartAndEndTimeFormatToUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :start_time
    remove_column :users, :end_time
  end
end

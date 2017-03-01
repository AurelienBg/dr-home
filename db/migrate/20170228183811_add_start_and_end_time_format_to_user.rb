class AddStartAndEndTimeFormatToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :start_time, :datetime, default: "20017-01-01 8:00"
    add_column :users, :end_time, :datetime, default: "20017-01-01 20:00"
  end
end

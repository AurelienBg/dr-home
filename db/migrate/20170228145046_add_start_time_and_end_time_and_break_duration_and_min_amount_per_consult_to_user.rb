class AddStartTimeAndEndTimeAndBreakDurationAndMinAmountPerConsultToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :start_time, :time, default: "8:00"
    add_column :users, :end_time, :time, default: "20:00"
    add_column :users, :break_duration, :integer, default: 0
    add_column :users, :min_amount_per_consult, :integer
  end
end

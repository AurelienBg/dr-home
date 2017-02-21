class AddDueDateToDemands < ActiveRecord::Migration[5.0]
  def change
    add_column :demands, :due_date, :datetime
  end
end

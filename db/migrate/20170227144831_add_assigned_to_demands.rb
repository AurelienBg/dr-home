class AddAssignedToDemands < ActiveRecord::Migration[5.0]
  def change
    rename_column :demands, :assigned?, :assigned
  end
end

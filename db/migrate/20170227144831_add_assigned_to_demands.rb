class AddAssignedToDemands < ActiveRecord::Migration[5.0]
  def change
    add_column :demands, :assigned, :boolean, default: false
  end
end

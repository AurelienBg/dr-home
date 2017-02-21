class AddRequestTimeToDemands < ActiveRecord::Migration[5.0]
  def change
    add_column :demands, :request_time, :date
  end
end

class AddSpecialtyAndForecastToDemand < ActiveRecord::Migration[5.0]
  def change
    add_column :demands, :specialty, :string
    add_column :demands, :forecast, :boolean, default: false
  end
end

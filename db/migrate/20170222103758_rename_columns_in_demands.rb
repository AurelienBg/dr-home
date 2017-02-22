class RenameColumnsInDemands < ActiveRecord::Migration[5.0]
  def change
  	rename_column :demands, :lat, :latitude
  	rename_column :demands, :long, :longitude
  end
end

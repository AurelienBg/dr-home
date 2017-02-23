class ChangeColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :validated, :boolean, null: false, default: false
  	add_column :users, :duration_consult, :integer
	add_column :users, :photo_id, :string
	add_column :users, :photo_prof_doc, :string
  	rename_column :users, :fav_distance, :radius
  	rename_column :users, :min_consultation, :min_nb_consult
  	remove_column :users, :fav_lat
  	remove_column :users, :fav_long
  end
end

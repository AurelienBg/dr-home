class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :specialty, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :zipcode, :string
    add_column :users, :fav_address, :string
    add_column :users, :fav_city, :string
    add_column :users, :fav_zipcode, :string
    add_column :users, :phone, :string
    add_column :users, :min_consultation, :integer
    add_column :users, :sex, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :fav_lat, :float
    add_column :users, :fav_long, :float
    add_column :users, :photo, :string
    add_column :users, :cardnumber, :string
  end
end

class CreateDemands < ActiveRecord::Migration[5.0]
  def change
    create_table :demands do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :zipcode
      t.string :phone
      t.string :email
      t.datetime :birthday
      t.string :sex
      t.float :lat
      t.float :long
      t.string :photo

      t.timestamps
    end
  end
end

class AddIllnesToDemands < ActiveRecord::Migration[5.0]
  def change
    add_column :demands, :illness, :string
  end
end

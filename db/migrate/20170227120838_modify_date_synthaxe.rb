class ModifyDateSynthaxe < ActiveRecord::Migration[5.0]
  def change
    change_column :demands, :birthday, :date
  end
end

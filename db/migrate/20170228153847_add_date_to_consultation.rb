class AddDateToConsultation < ActiveRecord::Migration[5.0]
  def change
    add_column :consultations, :date, :datetime
  end
end

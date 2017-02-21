class RemoveIllnessFromConsultations < ActiveRecord::Migration[5.0]
  def change
    remove_column :consultations, :illness, :string
  end
end

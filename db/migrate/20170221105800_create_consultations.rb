class CreateConsultations < ActiveRecord::Migration[5.0]
  def change
    create_table :consultations do |t|
      t.integer :estimated_price
      t.string :illness
      t.datetime :start_time
      t.datetime :end_time
      t.string :status
      t.references :user, foreign_key: true
      t.references :demand, foreign_key: true

      t.timestamps
    end
  end
end

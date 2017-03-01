class AddDoctorDepartureToConsultations < ActiveRecord::Migration[5.0]
  def change
    add_column :consultations, :doctor_departure_lat, :float
    add_column :consultations, :doctor_departure_lng, :float
  end
end

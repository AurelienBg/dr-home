class ChangeformatTimeFromDemands < ActiveRecord::Migration[5.0]
  def change
    change_column  :demands, :request_time, :datetime
  end
end

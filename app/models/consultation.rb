class Consultation < ApplicationRecord
  STATUS = ["confirmed", "rejected"]
  belongs_to :user
  belongs_to :demand

  validates :status, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end

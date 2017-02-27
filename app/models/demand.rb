class Demand < ApplicationRecord
  STATUS = ['pending', 'accepted', 'refused', 'done', 'cancelled']

  has_many :consultations, dependent: :destroy
  has_many :users, through: :consultations

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :zipcode, presence: true
  validates :illness, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :request_time, presence: true

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end

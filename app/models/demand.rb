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

  def set_long_address
    "#{address} #{zipcode}"
  end

  after_validation :set_long_address
  geocoded_by :set_long_address
  after_validation :geocode, if: :address_changed?

  has_attachment :photo
end

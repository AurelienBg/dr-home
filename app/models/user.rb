class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # geocoded_by :address

  has_many :consultations
  has_many :demands, through: :consultations

  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :specialty, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :zipcode, presence: true
  validates :phone, presence: true
  validates :min_consultation, presence: true
  validates :sex, presence: true
  validates :cardnumber, presence: true, uniqueness: true
# mount_uploader :photo, PhotoUploader
end

class User < ApplicationRecord
  SPECIALTY = ['Chirurgien-dentiste', 
    'Médecin généraliste', 
    'Pédiatre', 
    'Gynécologue', 
    'Ophtalmologue', 
    'ORL', 
    'Dermatologue', 
    'Chirurgien urologue', 
    'Allergologue', 
    'Cardiologue', 
    'Psychiatre', 
    'Neurologue', 
    'Rhumatologue', 
    'Stomatologue', 
    'Endocrinologue',
    'Gastro-entérologue et hépatologue',
    'Chirurgien orthopédiste',
    'Ostéopathe'].sort
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attachment :photo 
  has_attachment :photo_id
  has_attachment :photo_prof_doc

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  after_create :send_welcome_email

  # geocoded_by :address

  has_many :consultations
  has_many :demands, through: :consultations

  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :specialty, presence: true
  # validates :address, presence: true
  # validates :city, presence: true
  # validates :zipcode, presence: true
  # validates :phone, presence: true
  # validates :min_consultation, presence: true
  # validates :sex, presence: true
  # validates :cardnumber, presence: true, uniqueness: true
# mount_uploader :photo, PhotoUploader

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

  def name
    "#{first_name} #{last_name}"
  end
end

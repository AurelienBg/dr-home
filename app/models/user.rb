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
  SEX = ['Madame', 'Monsieur']
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attachment :photo
  has_attachment :photo_id
  has_attachment :photo_prof_doc

  def set_long_address
    if fav_address.nil? && fav_city.nil?
      "#{address} #{zipcode}"
    else
      "#{fav_address} #{fav_city}"
    end
  end

  geocoded_by :set_long_address
  after_validation :geocode

  after_create :send_welcome_email


  has_many :consultations
  has_many :demands, through: :consultations

  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true
  validates :min_nb_consult, :numericality => { :greater_than_or_equal_to => 1 }, on: :update
  validates :duration_consult, :numericality => { :greater_than_or_equal_to => 10 }, on: :update
  # validates :cardnumber, presence: true, uniqueness: true


  def profile_completed?
    first_name && last_name && specialty && address && phone && sex && min_nb_consult && duration_consult && cardnumber
  end

  def name
    "#{first_name} #{last_name}"
  end

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
end

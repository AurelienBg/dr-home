# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Consultation.destroy_all
# Demand.destroy_all
# User.destroy_all

users = [
User.create!(
  email: "jc@gmail.com",
  password: "aurelien",
  first_name: "jc",
  last_name: "Dupont",
  specialty: "generalist",
  address: "16 villa Gaudelet",
  city: "Paris",
  zipcode: "75005",
  phone: "+33 6 7612 1703",
  min_consultation: 5,
  sex: "M",
  cardnumber: "M-028d082938238",
  admin: true)
]
puts  "creating a user with the following email :#{users[0].email}"

10.times do
  User.create! \
    email: Faker::Internet.email,
    password: "aurelien",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    specialty: User::SPECIALTY.sample,
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    zipcode: Faker::Address.zip_code,
    phone: Faker::PhoneNumber.phone_number,
    min_consultation: rand(5..20),
    sex: ["M", "F"].sample,
    cardnumber: Faker::Code.isbn,
    admin: [true, false].sample
    puts  "creating a user with the following email :#{User.last.email}"
  end

Demand
demands = [
Demand.new(
  first_name: "Pierre",
  last_name: "Papillard",
  address: "12 rue de Four",
  city: "Paris",
  zipcode: "75006",
  illness: "Pain in the stomach",
  phone: "+33 1 6712 3033",
  email: "pierre@gmail.com",
  request_time: Date.today)
]
puts "creating a demand for : #{demands[0].first_name} #{demands[0].last_name} "

50.times do
  Demand.create! \
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_address,
    city: 'Paris',
    zipcode: Faker::Address.zip_code,
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    illness: Faker::Lorem.sentence(3),
    birthday: Faker::Date.between(80.years.ago, Date.today),
    sex: ["M", "F"].sample,
    # lat: Faker::Address.latitude,
    # long: Faker::Address.longitude,
    photo: Faker::LoremPixel.image("50x60", false, 'people'),
    request_time: Faker::Date.between(20.days.ago, Date.today),
    due_date: Faker::Date.between(Date.today, Date.today + 10 )
  puts "creating a demand for : #{Demand.last.first_name} #{Demand.last.last_name} "
end


# 20.times do
#   Consultation.create! \
#     estimated_price: rand(30..120),
#     start_time: Faker::Date.forward(2),
#     end_time: Faker::Date.forward(3),
#     status: ["pending", "accepted", "refused"].sample,
#     user_id: [ User.first, User.last ].sample,
#     demand_id: [ Demand.last ].sample,
#     created_at: Date.today,
#     updated_at: Date.today
#   puts "creating a consultation for : #{Demand.last.first_name} #{Demand.last.last_name} "
# end



# **********************************

rue = [
        "rue d'avron",
        "rue des amiraux",
        "rue championnet",
        "rue jean pierre timbaud",
        "rue oberkampf",
        "avenue montaigne",
        "rue saint-maur",
        "rue du louvre",
        "rue du faubourg saint antoine",
        "rue de vaugirard",
        "rue maubeuge",
        "avenue des champs elysées",
        "rue dutot",
        "boulevard richard lenoir"]

50.times do
  new = Demand.new \
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: "#{rand(1..25)} #{rue.sample}",
    city: 'Paris',
    zipcode: '75',
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    illness: Faker::Lorem.sentence(3),
    birthday: Faker::Date.between(80.years.ago, Date.today),
    sex: ["M", "F"].sample,
    # lat: Faker::Address.latitude,
    # long: Faker::Address.longitude,
    photo: Faker::LoremPixel.image("50x60", false, 'people'),
    request_time: Faker::Date.between(20.days.ago, Date.today),
    due_date: Faker::Date.between(Date.today, Date.today + 10 )
  puts "Demand for : #{new.address} #{new.city} is #{new.valid?}"
  new.save
end


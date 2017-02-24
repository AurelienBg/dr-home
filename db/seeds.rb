# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Consultation.destroy_all
Demand.destroy_all
User.destroy_all


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
  min_nb_consult: 5,
  sex: "M",
  cardnumber: "M-028d082938238",
  admin: true)
]
puts  "creating a user with the following email :#{users[0].email}"




# 10.times do
#   User.create! \
#     email: Faker::Internet.email,
#     password: "aurelien",
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     specialty: User::SPECIALTY.sample,
#     address: Faker::Address.street_address,
#     city: Faker::Address.city,
#     zipcode: Faker::Address.zip_code,
#     phone: Faker::PhoneNumber.phone_number,
#     min_consultation: rand(5..20),
#     sex: ["M", "F"].sample,
#     cardnumber: Faker::Code.isbn,
#     admin: [true, false].sample
#     puts  "creating a user with the following email :#{User.last.email}"
#   end


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
  request_time: Date.today),
  birthday:"18/05/1989",
  sexe:"Masculin",
  longitude:"",
  latitude:"",
]
puts "creating a demand for : #{demands[0].first_name} #{demands[0].last_name} "

Demand
demands = [
Demand.new(
  first_name: "Jean",
  last_name: "Michon",
  address: "23 Rue Etienne Dolet",
  city: "Orléans",
  zipcode: "45000 ",
  illness: "Gastro",
  phone: "+33 1 4567 9987",
  email: "jmichon@gmail.com",
  request_time: Date.today),
  birthday:"15/04/1968",
  sexe:"Masculin",
  longitude:"1.9081556797027588",
  latitude:"47.90067848547314",
]
puts "creating a demand for : #{demands[1].first_name} #{demands[1].last_name} "

Demand
demands = [
Demand.new(
  first_name: "Marguerite",
  last_name: "Deschamps",
  address: "10 Rue des Pastoureaux",
  city: "Orléans",
  zipcode: ", 45000",
  illness: "Grippe",
  phone: "+33 1 3456 9984",
  email: "mdeschamps@gmail.com",
  request_time: Date.today),
  birthday:"22/03/1969",
  sexe:"Feminin",
  longitude:"1.907651424407959",
  latitude:"47.900397965395456",
]
puts "creating a demand for : #{demands[2].first_name} #{demands[2].last_name} "

Demand
demands = [
Demand.new(
  first_name: "Renaud",
  last_name: "Martin",
  address: "13 Venelle Saint-Pierre Empont",
  city: " Bricqueville-sur-Mer",
  zipcode: "50290",
  illness: "varicelle",
  phone: "+33 1 4678 9867",
  email: "rmartin@gmail.com",
  request_time: Date.today),
  birthday:"02/05/1999",
  sexe:"Masculin",
  longitude:"1.9081127643585205",
  latitude:"47.90038357970946",
]
puts "creating a demand for : #{demands[3].first_name} #{demands[3].last_name} "

Demand
demands = [
Demand.new(
  first_name: "Philippe",
  last_name: "Risoli",
  address: "87 Route du Havre de la Vanlee",
  city: "Orléans",
  zipcode: "45000",
  illness: "varicelle",
  phone: "+33 1 7689 4565",
  email: "prisbn@gmail.com",
  request_time: Date.today),
  birthday:"12/09/1995",
  sexe:"Masculin",
  longitude:"1.9081127643585205",
  latitude:"47.90038357970946",
]
puts "creating a demand for : #{demands[4].first_name} #{demands[4].last_name} "

Demand
demands = [
Demand.new(
  first_name: "Huguette",
  last_name: "Dupont",
  address: "5 Rue des Moulins",
  city: "Notre-Dame-de-Cenilly",
  zipcode: "50210 ",
  illness: "fievre",
  phone: "+33 1 4678 9898",
  email: "hudupont@gmail.com",
  request_time: Date.today),
  birthday:"07/08/1994",
  sexe:"Femme",
  longitude:"-1.2564754486083984",
  latitude:"48.996086101032176",
]
puts "creating a demand for : #{demands[5].first_name} #{demands[5].last_name} "

Demand
demands = [
Demand.new(
  first_name: "Damien",
  last_name: "Lefevre",
  address: "4 Impasse de la Mairie",
  city: " Notre-Dame-de-Cenilly",
  zipcode: "50210",
  illness: "gastro",
  phone: "+33 1 4678 9867",
  email: "dlev@gmail.com",
  request_time: Date.today),
  birthday:"02/04/1978",
  sexe:"Masculin",
  longitude:"1.9081127643585205",
  latitude:"47.90038357970946",
]
puts "creating a demand for : #{demands[6].first_name} #{demands[6].last_name} "

Demand
demands = [
Demand.new(
  first_name: "Chantal",
  last_name: "Lebrun",
  address: "2B Rue Thomas Douville",
  city: " Notre-Dame-de-Cenilly",
  zipcode: "50210",
  illness: "insolation",
  phone: "+33 1 4678 9867",
  email: "clebrun@gmail.com",
  request_time: Date.today),
  birthday:"12/08/1988",
  sexe:"Feminin",
  longitude:"-1.2576448917388916",
  latitude:"48.995501835467444",
]
puts "creating a demand for : #{demands[7].first_name} #{demands[7].last_name} "

Demand
demands = [
Demand.new(
  first_name: "Pierre",
  last_name: "Chomont",
  address: "1 Route du Château d'Eau",
  city: "Saint-Martin-de-Cenilly",
  zipcode: "50210 ",
  illness: "rhume",
  phone: "+33 1 5676 3454",
  email: "pchomont@gmail.com",
  request_time: Date.today),
  birthday:"24/12/2001",
  sexe:"Masculin",
  longitude:"-1.2797248363494873",
  latitude:"48.98848307378626",
]
puts "creating a demand for : #{demands[8].first_name} #{demands[8].last_name} "

Demand
demands = [
Demand.new(
  first_name: "Clementine",
  last_name: "Cremit",
  address: "47 Rue de la Liberté",
  city: "Saint-Martin-de-Cenilly",
  zipcode: "50210 ",
  illness: "nausées",
  phone: "+33 1 4523 4545",
  email: "ccmit@gmail.com",
  request_time: Date.today),
  birthday:"11/04/1996",
  sexe:"Feminin",
  longitude:"-1.273437738418579",
  latitude:"448.98689896373105",
]
puts "creating a demand for : #{demands[9].first_name} #{demands[9].last_name} "

Demand
demands = [
Demand.new(
  first_name: "Boris",
  last_name: "Campaillard",
  address: "21 Rue de la Vanne",
  city: "Saint-Martin-de-Cenilly",
  zipcode: "50210 ",
  illness: "gastro",
  phone: "+33 1 4576 8909",
  email: "campillard@gmail.com",
  request_time: Date.today),
  birthday:"08/09/1998",
  sexe:"Masculin",
  longitude:"-1.2773323059082031",
  latitude:"48.97981561568688",
]
puts "creating a demand for : #{demands[10].first_name} #{demands[10].last_name} "

Demand
demands = [
Demand.new(
  first_name: "Berthe",
  last_name: "Prisa",
  address: "32 Rue des Salines",
  city: " Cérences",
  zipcode: "50290",
  illness: "angine",
  phone: "+33 1 7865 3454",
  email: "bprisa@gmail.com",
  request_time: Date.today),
  birthday:"22/07/1987",
  sexe:"Feminin",
  longitude:"-1.445324420928955",
  latitude:"48.919355000421646",
]
puts "creating a demand for : #{demands[11].first_name} #{demands[11].last_name} "

Demand
demands = [
Demand.new(
  first_name: "Martin",
  last_name: "Salin",
  address: "6 Route du Bocage",
  city: "50290",
  zipcode: " Bricqueville-sur-Mer",
  illness: "fievre",
  phone: "+33 1 2345 7689",
  email: "malinsalin@gmail.com",
  request_time: Date.today),
  birthday:"02/12/2000",
  sexe:"Masculin",
  longitude:"-1.5197181701660156",
  latitude:"48.912826144403944",
]
puts "creating a demand for : #{demands[12].first_name} #{demands[12].last_name} "

Demand
demands = [
Demand.new(
  first_name: "Jules",
  last_name: "Priset",
  address: "3 Chemin de Sablé",
  city: "Bricqueville-sur-Mer",
  zipcode: "50290",
  illness: "toux grasse",
  phone: "+33 1 8754 6576",
  email: "priset@gmail.com",
  request_time: Date.today),
  birthday:"02/11/1976",
  sexe:"Masculin",
  longitude:"1.9081127643585205",
  latitude:"47.90038357970946",
]
puts "creating a demand for : #{demands[13].first_name} #{demands[13].last_name} "

Demand
demands = [
Demand.new(
  first_name: "Manon",
  last_name: "Panon",
  address: "53A Route du Havre de la Vanlee",
  city: "Bricqueville-sur-Mer",
  zipcode: "50290 ",
  illness: "rhume",
  phone: "+33 1 3465 7645",
  email: "mpanon@gmail.com",
  request_time: Date.today),
  birthday:"23/12/1954",
  sexe:"Feminin",
  longitude:"-1.5303611755371094",
  latitude:"48.91296716542893",
]
puts "creating a demand for : #{demands[14].first_name} #{demands[14].last_name} "

Demand
demands = [
Demand.new(
  first_name: "Clement",
  last_name: "Delaunet",
  address: "2 Impasse de l'Église",
  city: "Sourdeval",
  zipcode: "50290 ",
  illness: "infection pulmonaire",
  phone: "+33 1 3456 6543",
  email: "cdel@gmail.com",
  request_time: Date.today),
  birthday:"06/05/1989",
  sexe:"Masculin",
  longitude:"1.9081127643585205",
  latitude:"47.90038357970946",
]
puts "creating a demand for : #{demands[15].first_name} #{demands[15].last_name} "

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


20.times do
  Consultation.create! \
    estimated_price: rand(30..120),
    start_time: Faker::Date.forward(2),
    end_time: Faker::Date.forward(3),
    status: ["pending", "accepted", "refused"].sample,
    user_id: [ User.first, User.last ].sample,
    demand_id: [ Demand.last ].sample,
    created_at: Date.today,
    updated_at: Date.today
  puts "creating a consultation for : #{Demand.last.first_name} #{Demand.last.last_name} "
end



# **********************************

# rue = [
#         "rue d'avron",
#         "rue des amiraux",
#         "rue championnet",
#         "rue jean pierre timbaud",
#         "rue oberkampf",
#         "avenue montaigne",
#         "rue saint-maur",
#         "rue du louvre",
#         "rue du faubourg saint antoine",
#         "rue de vaugirard",
#         "rue maubeuge",
#         "avenue des champs elysées",
#         "rue dutot",
#         "boulevard richard lenoir"]

# 50.times do
#   new = Demand.new \
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     address: "#{rand(1..25)} #{rue.sample}",
#     city: 'Paris',
#     zipcode: '75',
#     phone: Faker::PhoneNumber.phone_number,
#     email: Faker::Internet.email,
#     illness: Faker::Lorem.sentence(3),
#     birthday: Faker::Date.between(80.years.ago, Date.today),
#     sex: ["M", "F"].sample,
#     # lat: Faker::Address.latitude,
#     # long: Faker::Address.longitude,
#     photo: Faker::LoremPixel.image("50x60", false, 'people'),
#     request_time: Faker::Date.between(20.days.ago, Date.today),
#     due_date: Faker::Date.between(Date.today, Date.today + 10 )
#   puts "Demand for : #{new.address} #{new.city} is #{new.valid?}"
#   new.save
# end

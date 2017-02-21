# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Consultation.destroy_all
Demand.destroy_all

users = [
User.create!(
  email: "jc@gmail.com", password: "aurelien", first_name: "jc", last_name: "Dupont",
  specialty: "generalist",
  address: "16 villa Gaudelet",
  city: "Paris",
  zipcode: "75005",
  phone: "+33 6 7612 1703",
  min_consultation: 5,
  sex: "M",
  cardnumber: "M-028d082938238")
]

puts  "creating a user with the following email :#{users[0].email}"

# Demand
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


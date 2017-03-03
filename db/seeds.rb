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

# Seed of User
users = [
User.create!( \
  email: "jc@gmail.com",
  password: "aurelien",
  first_name: "Jean-Claude",
  last_name: "Dupont",
  specialty: "Généraliste",
  address: "16 villa Gaudelet",
  city: "Paris",
  zipcode: "75005",
  phone: "+33 6 76 12 17 03",
  min_nb_consult: 5,
  sex: "Monsieur",
  cardnumber: "M-028d082938238",
  duration_consult: 20,
  admin: true)
]
puts  "creating a user with the following email :#{users[0].email}"


# Seed of Demand
demands = [
  {
    first_name: "Pierre",
    last_name: "Papillard",
    address: "12 rue de Four",
    city: "Paris",
    zipcode: "75006",
    illness: "Etat grippal",
    phone: "+33 1 6712 3033",
    email: "pierre@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"18/05/1989",
    sex:"Monsieur",
    photo: File.open(Rails.root.join("db/fixtures/images/man-1.jpg"))},

  {
    first_name: "Jean",
    last_name: "Michon",
    address: "54 Avenue Maurice Marland",
    city: "Bréhal",
    zipcode: "50290 ",
    illness: "Gastro entérite",
    phone: "+33 1 4567 9987",
    email: "jmichon@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"15/04/1968",
    sex:"Monsieur",
    photo: File.open(Rails.root.join("db/fixtures/images/man-2.jpg"))},

  {
    first_name: "Marguerite",
    last_name: "Deschamps",
    address: "6 Vierge Garnier",
    city: "Coudeville-sur-Mer",
    zipcode: "50290",
    illness: "Etat grippal",
    phone: "+33 1 3456 9984",
    email: "mdeschamps@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"22/03/1969",
    sex:"Madame",
    photo: File.open(Rails.root.join("db/fixtures/images/woman-1.jpg"))},

  {
    first_name: "Renaud",
    last_name: "Martin",
    address: "13 Venelle Saint-Pierre Empont",
    city: " Bricqueville-sur-Mer",
    zipcode: "50290",
    illness: "Varicelle",
    phone: "+33 1 4678 9867",
    email: "rmartin@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"02/05/1999",
    sex:"Monsieur",
    photo: File.open(Rails.root.join("db/fixtures/images/man-3.jpg"))},

  {
    first_name: "Philippe",
    last_name: "Risoli",
    address: "36 Le Village Enoux",
    city: "Chanteloup",
    zipcode: "50510",
    illness: "Varicelle",
    phone: "+33 1 7689 4565",
    email: "prisbn@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"12/09/1995",
    sex:"Monsieur",
    photo: File.open(Rails.root.join("db/fixtures/images/man-4.jpg"))},

  {
    first_name: "Huguette",
    last_name: "Dupont",
    address: "5 Rue des Moulins",
    city: "Notre-Dame-de-Cenilly",
    zipcode: "50210 ",
    illness: "Fièvre",
    phone: "+33 1 4678 9898",
    email: "hudupont@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"07/08/1994",
    sex:"Madame",
    photo: File.open(Rails.root.join("db/fixtures/images/woman-2.jpg"))},

  {
    first_name: "Damien",
    last_name: "Lefevre",
    address: "4 Impasse de la Mairie",
    city: " Notre-Dame-de-Cenilly",
    zipcode: "50210",
    illness: "Etat grippal",
    phone: "+33 1 4678 9867",
    email: "dlev@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"02/04/1978",
    sex:"Monsieur",
    photo: File.open(Rails.root.join("db/fixtures/images/man-5.jpg"))},

  {
    first_name: "Chantal",
    last_name: "Lebrun",
    address: "2B Rue Thomas Douville",
    city: " Notre-Dame-de-Cenilly",
    zipcode: "50210",
    illness: "Insolation",
    phone: "+33 1 4678 9867",
    email: "clebrun@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"12/08/1988",
    sex:"Madame",
    photo: File.open(Rails.root.join("db/fixtures/images/woman-3.jpg"))},

  {
    first_name: "Pierre",
    last_name: "Chomont",
    address: "1 Route du Château d'Eau",
    city: "Saint-Martin-de-Cenilly",
    zipcode: "50210 ",
    illness: "Nausées",
    phone: "+33 1 5676 3454",
    email: "pchomont@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"24/12/2001",
    sex:"Monsieur",
    photo: File.open(Rails.root.join("db/fixtures/images/man-6.jpg"))},

  {
    first_name: "Clementine",
    last_name: "Cremit",
    address: "47 Rue de la Liberté",
    city: "Saint-Martin-de-Cenilly",
    zipcode: "50210 ",
    illness: "Colique",
    phone: "+33 1 4523 4545",
    email: "ccmit@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"11/04/1996",
    sex:"Madame",
    photo: File.open(Rails.root.join("db/fixtures/images/woman-4.jpg"))},

  {
    first_name: "Boris",
    last_name: "Campaillard",
    address: "21 Rue de la Vanne",
    city: "Saint-Martin-de-Cenilly",
    zipcode: "50210 ",
    illness: "Nausées",
    phone: "+33 1 4576 8909",
    email: "campillard@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"08/09/1998",
    sex:"Monsieur",
    photo: File.open(Rails.root.join("db/fixtures/images/man-7.jpg"))},

  {
    first_name: "Berthe",
    last_name: "Prisa",
    address: "32 Rue des Salines",
    city: " Cérences",
    zipcode: "50290",
    illness: "Bilan de santé",
    phone: "+33 1 7865 3454",
    email: "bprisa@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"22/07/1987",
    sex:"Madame",
    photo: File.open(Rails.root.join("db/fixtures/images/woman-5.jpg"))},

  {
    first_name: "Martin",
    last_name: "Salin",
    address: "6 Route du Bocage",
    city: "Bricqueville-sur-Mer",
    zipcode: " 50290",
    illness: "Fièvre",
    phone: "+33 1 2345 7689",
    email: "malinsalin@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"02/12/2000",
    sex:"Monsieur",
    photo: File.open(Rails.root.join("db/fixtures/images/man-8.jpg"))},

  {
    first_name: "Jules",
    last_name: "Priset",
    address: "3 Chemin de Sablé",
    city: "Bricqueville-sur-Mer",
    zipcode: "50290",
    illness: "Toux grasse",
    phone: "+33 1 8754 6576",
    email: "priset@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"02/11/1976",
    sex:"Monsieur",
    photo: File.open(Rails.root.join("db/fixtures/images/man-9.jpg"))},

  {
    first_name: "Manon",
    last_name: "Panon",
    address: "53A Route du Havre de la Vanlee",
    city: "Bricqueville-sur-Mer",
    zipcode: "50290 ",
    illness: "Etat grippal",
    phone: "+33 1 3465 7645",
    email: "mpanon@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"23/12/1954",
    sex:"Madame",
    photo: File.open(Rails.root.join("db/fixtures/images/woman-6.jpg"))},

  {
    first_name: "Clement",
    last_name: "Delaunet",
    address: "2 Impasse de l'Église",
    city: "Sourdeval",
    zipcode: "50290 ",
    illness: "Infection pulmonaire",
    phone: "+33 1 3456 6543",
    email: "cdel@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"06/05/1989",
    sex:"Monsieur",
    photo: File.open(Rails.root.join("db/fixtures/images/man-10.jpg"))},
  # debut normandie
  {
    first_name: "Romain",
    last_name: "Leduc",
    address: "4 Rue des Oliviers",
    city: "Joué-lès-Tours",
    zipcode: "37300 ",
    illness: "Etat grippal",
    phone: "+33 1 6798 4576",
    email: "rleduc@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"22/09/1987",
    sex:"Monsieur",
    photo: File.open(Rails.root.join("db/fixtures/images/man-11.jpg"))},

  {
    first_name: "Ludovic",
    last_name: "Manson",
    address: "15 Rue Blériot",
    city: "Joué-lès-Tours",
    zipcode: "37300",
    illness: "Bilan de santé",
    phone: "+33 1 2343 6798",
    email: "ludomanson@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"29/10/1976",
    sex:"Monsieur",
    photo: File.open(Rails.root.join("db/fixtures/images/man-12.jpg"))},

  {
    first_name: "Marine",
    last_name: "Cenelly",
    address: "28 Rue de Chantepie",
    city: "Joué-lès-Tours",
    zipcode: "37300",
    illness: "Toux grasse",
    phone: "+33 1 4576 2354",
    email: "marinecece@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"01/12/1992",
    sex:"Madame",
    photo: File.open(Rails.root.join("db/fixtures/images/woman-7.jpg"))},


  {
    first_name: "Louise",
    last_name: "Montpinchon",
    address: "4 Rue Denis Papin",
    city: "Joué-lès-Tours",
    zipcode: "37300",
    illness: "Fievre",
    phone: "+33 1 1243 7898",
    email: "louloum@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"12/03/1996",
    sex:"Madame",
    photo: File.open(Rails.root.join("db/fixtures/images/woman-8.jpg"))},

  {
    first_name: "Edouard",
    last_name: "Ricard",
    address: "7 Rue Pasteur",
    city: "Joué-lès-Tours",
    zipcode: "37300",
    illness: "Etat grippal",
    phone: "+33 1 1243 7898",
    email: "edricard@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"18/05/1993",
    sex:"Homme",
    photo: File.open(Rails.root.join("db/fixtures/images/man-13.jpg"))},
  # fin normandie
  # debut vendée
  {
    first_name: "Fabrice",
    last_name: "Dupont",
    address: "40 Rue des Tamaris",
    city: "Le Fenouiller",
    zipcode: "85800",
    illness: "Infection pulmonaire",
    phone: "+33 1 3456 6543",
    email: "fabdupont@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"09/06/1989",
    sex:"Monsieur",
    photo: File.open(Rails.root.join("db/fixtures/images/man-14.jpg"))},

  {
    first_name: "Martin",
    last_name: "Longeot",
    address: "15 Rue des Bleuets",
    city: "Le Fenouiller",
    zipcode: "85800",
    illness: "Etat grippal",
    phone: "+33 1 6798 5654",
    email: "martinlongeot@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"19/07/2000",
    sex:"Monsieur",
    photo: File.open(Rails.root.join("db/fixtures/images/man-15.jpg"))},

  {
    first_name: "Lucie",
    last_name: "Patet",
    address: "7B Rue de la Potellerie",
    city: "Le Fenouiller",
    zipcode: "85800",
    illness: "Toux sèche",
    phone: "+33 1 4576 9087",
    email: "luciep@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"26/08/2003",
    sex:"Femme",
    photo: File.open(Rails.root.join("db/fixtures/images/woman-9.jpg"))},
   {
    first_name: "Marie",
    last_name: "Dulac",
    address: "79 Avenue de la Crochetière",
    city: "Le Fenouiller",
    zipcode: "85800",
    illness: "Etat grippal",
    phone: "+33 1 5687 4367",
    email: "mariedudu@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"29/03/2000",
    sex:"Femme",
    photo: File.open(Rails.root.join("db/fixtures/images/woman-10.jpg"))},
   {
    first_name: "Lisette",
    last_name: "Perret",
    address: "36-38 Rue de la Fontaine",
    city: "Le Fenouiller",
    zipcode: "85800",
    illness: "Bilan de santé",
    phone: "+33 1 4576 3454",
    email: "lisetteperret@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"21/02/1963",
    sex:"Femme",
    photo: File.open(Rails.root.join("db/fixtures/images/woman-11.jpg"))},
   {
    first_name: "Jean",
    last_name: "Mondat",
    address: "33 Avenue du Val de Vie",
    city: "Le Fenouiller",
    zipcode: "85800",
    illness: "Fievre",
    phone: "+33 1 4576 3454",
    email: "jeanmondat@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"02/07/1978",
    sex:"Homme",
    photo: File.open(Rails.root.join("db/fixtures/images/man-24.jpg"))},
  {
    first_name: "Elsa",
    last_name: "Pimpa",
    address: "4 Impasse de l'Aurore",
    city: "Givrand",
    zipcode: "85800",
    illness: "Fievre",
    phone: "+33 1 4576 3454",
    email: "elsapimpa@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"09/07/2001",
    sex:"Femme",
    photo: File.open(Rails.root.join("db/fixtures/images/woman-12.jpg"))},
  {
    first_name: "Fabien",
    last_name: "Lainet",
    address: "6 Chemin du Grand Fief",
    city: "Saint-Gilles-Croix-de-Vie",
    zipcode: "85800",
    illness: "Fievre",
    phone: "+33 1 4576 3454",
    email: "fabienlainet@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"14/03/1987",
    sex:"Homme",
    photo: File.open(Rails.root.join("db/fixtures/images/man-17.jpg"))},


  {
    first_name: "Marguerite",
    last_name: "Danet",
    address: "627 Rue de Burnel",
    city: "Saint-Gilles-Croix-de-Vie",
    zipcode: "85800",
    illness: "Gastro",
    phone: "+33 1 6589 4367",
    email: "mamadada@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"19/06/1986",
    sex:"Femme",
    photo: File.open(Rails.root.join("db/fixtures/images/woman-14.jpg"))},

  {
    first_name: "Brigitte",
    last_name: "Ladanette",
    address: "44 Route de la Roche",
    city: "Saint-Gilles-Croix-de-Vie",
    zipcode: "85800",
    illness: "Bilan de santé",
    phone: "+33 1 6589 4367",
    email: "brigitteladanette@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"10/05/1976",
    sex:"Femme",
    photo: File.open(Rails.root.join("db/fixtures/images/woman-17.jpg"))},

  {
    first_name: "Pierrot",
    last_name: "Duris",
    address: "18 Rue des Forgerons",
    city: "Saint-Gilles-Croix-de-Vie",
    zipcode: "85800",
    illness: "Constipation",
    phone: "+33 1 2354 8909",
    email: "pierrotdd@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"11/08/1974",
    sex:"Homme",
    photo: File.open(Rails.root.join("db/fixtures/images/man-18.jpg"))},

  {
    first_name: "Henri",
    last_name: "Delhomme",
    address: "7 Rue des Artisans",
    city: "Saint-Gilles-Croix-de-Vie",
    zipcode: "85800",
    illness: "Allergie",
    phone: "+33 1 3465 7865",
    email: "hdelhomme@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"06/03/1980",
    sex: "Homme"},

  {
    first_name: "Gertrude",
    last_name: "Mavillo",
    address: "16 Rue de la Bégaudière",
    city: "Saint-Gilles-Croix-de-Vie",
    zipcode: "85800",
    illness: "Rhume",
    phone: "+33 1 3465 7865",
    email: "hdelhomme@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"01/04/1952",
    sex:"Femme",
    photo: File.open(Rails.root.join("db/fixtures/images/woman-16.jpg"))},

  {
    first_name: "Maxime",
    last_name: "Damidot",
    address: "26 Rue des Couvreurs",
    city: "Saint-Gilles-Croix-de-Vie",
    zipcode: "85800",
    illness: "Varicelle",
    phone: "+33 1 4576 4322",
    email: "maxdamidot@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"11/12/1996",
    sex:"Homme",
    photo: File.open(Rails.root.join("db/fixtures/images/man-19.jpg"))},


  {
    first_name: "Martine",
    last_name: "Maugeat",
    address: "5-7 Rue des Électriciens",
    city: "Saint-Gilles-Croix-de-Vie",
    zipcode: "85800",
    illness: "Nausées",
    phone: "+33 1 3465 7865",
    email: "martinem@gmail.com",
    request_time: Date.today,
    due_date: Date.today + 1.day,
    birthday:"14/07/1983",
    sex:"Femme",
    photo: File.open(Rails.root.join("db/fixtures/images/woman-17.jpg"))}
# fin vendée
]

demands.each do |demand_attributes|
  demand = Demand.create!(demand_attributes)
  puts "creating a demand for : #{demand.first_name} #{demand.last_name} "
  puts "#{demand.latitude} - #{demand.longitude}"
end


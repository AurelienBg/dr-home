user = User.where(email: "jean@gmail.com").first
demands = Demand.near("sables d'olonne", 100)



C
consultations = [
  {
    start_time: DateTime.new(2017,3,4,9,0),
    end_time: DateTime.new(2017,3,4,9,20),
    status: "confirmed",
    doctor_departure_lat: 46.492958,
    doctor_departure_lng: -1.795493,
    date: Date.today + 1.day
  },
  {
    start_time: DateTime.new(2017,3,4,9,29),
    end_time: DateTime.new(2017,3,4,9,49),
    status: "confirmed",
    doctor_departure_lat: 46.492958,
    doctor_departure_lng: -1.795493,
    date: Date.today + 1.day
  },
  {
    start_time: DateTime.new(2017,3,4,10,20),
    end_time: DateTime.new(2017,3,4,10,40),
    status: "confirmed",
    doctor_departure_lat: 46.492958,
    doctor_departure_lng: -1.795493,
    date: Date.today + 1.day},
  {
    start_time: DateTime.new(2017,3,4,11,01),
    end_time: DateTime.new(2017,3,4,11,21),
    status: "confirmed",
    doctor_departure_lat: 46.492958,
    doctor_departure_lng: -1.795493,
    date: Date.today + 1.day},
  {
    start_time: DateTime.new(2017,3,4,11,43),
    end_time: DateTime.new(2017,3,4,12,03),
    status: "confirmed",
    doctor_departure_lat: 46.492958,
    doctor_departure_lng: -1.795493,
    date: Date.today + 1.day},
  {
    start_time: DateTime.new(2017,3,4,12,22),
    end_time: DateTime.new(2017,3,4,12,42),
    status: "confirmed",
    doctor_departure_lat: 46.492958,
    doctor_departure_lng: -1.795493,
    date: Date.today + 1.day},
  {
    start_time: DateTime.new(2017,3,4,13,06),
    end_time: DateTime.new(2017,3,4,13,26),
    status: "confirmed",
    doctor_departure_lat: 46.492958,
    doctor_departure_lng: -1.795493,
    date: Date.today + 1.day},
  {
    start_time: DateTime.new(2017,3,4,14,02),
    end_time: DateTime.new(2017,3,4,14,22),
    status: "confirmed",
    doctor_departure_lat: 46.492958,
    doctor_departure_lng: -1.795493,
    date: Date.today + 1.day}
  ]




consultations.each_with_index do |consultation, index|
  new_consultation = Consultation.new(consultation)
  new_consultation.user = user
  new_consultation.demand = demands[index]
  new_consultation.save!
  puts "creating a consultation"
end


require 'routific'

class RoutificJob < ApplicationJob
  queue_as :default

  # def perform(*args)  with or without args !
  def perform
    puts "Starting Routific call"
    visits = {
  "order_1" => {
    "start" => "9:00",
    "end" => "12:00",
    "duration" => 10,
    "location" => {
      "name" => "6800 Cambie",
      "lat" => 49.227107,
      "lng" => -123.1163085
    }
  }
}

fleet = {
  "vehicle_1" => {
    "start_location" => {
      "name" => "800 Kingsway",
      "lat" => 49.2553636,
      "lng" => -123.0873365
    },
    "end_location" => {
      "name" => "800 Kingsway",
      "lat" => 49.2553636,
      "lng" => -123.0873365
    },
    "shift_start" => "8:00",
    "shift_end" => "12:00"
  }
}

data = {
  visits: visits,
  fleet: fleet
}

    # data = hash
    puts data
          # binding.pry
    Routific.setToken(ENV['ROUTIFIC_API'])

    # buid_data_hash (methdo prive qui genere le hasg input)
    route_consultations = Routific.getRoute(data)
    # p routes = JSON.parse(route_consultations)
    p route_consultations.class
    # build the consiltation fron the route_consultations hash
    # consultations = ???

    puts "Ending Routific call"
  end


# private
#   def buid_data_hash
#     ..
#     @data = {}
#   end
end

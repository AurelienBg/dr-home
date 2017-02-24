require 'routific'

class RoutificJob < ApplicationJob
  queue_as :default

  # def perform(*args)  with or without args !
  def perform
    # import data from ActiveRecords to build the input for Routific

    visits = {}
    fleet = {}

    buid_data_hash(visits, fleet)
    data = {
      visits: visits,
      fleet: fleet
    }

    # data = hash
    puts data
    Routific.setToken(ENV['ROUTIFIC_API'])
    # buid_data_hash (methdo prive qui genere le hasg input)
    route_consultations = Routific.getRoute(data)
    # binding.pry

    # p routes = JSON.parse(route_consultations)
    p route_consultations
    # build the consiltation fron the route_consultations hash
    # consultations = ???

    puts "Ending Routific call"
  end

  private

  def buid_data_hash(visits, fleet)
    # visits = {
    #         "order_1" => {
    #           "start" => "9:00",
    #           "end" => "12:00",
    #           "duration" => 10,
    #           "location" => {
    #             "name" => "6800 Cambie",
    #             "lat" => 49.227107,
    #             "lng" => -123.1163085
    #           }
    #         }
    #       }


    demands_of_the_day = Demand.where("due_date <= ?", Date.today)
    n = 1
    demands_of_the_day.each do |demand|
      visits["order_#{n}"] =  {
        "start" => "9:00",
        "end" => "19:00",
        "duration" => 20,
        "location" => {
          "name" => demand.address,
          "lat" => demand.latitude,
          "lng" => demand.longitude
        }
      }
      n += 1
    end

    # fleet = {
    #   "vehicle_1" => {
    #     "start_location" => {
    #       "name" => "800 Kingsway",
    #       "lat" => 49.2553636,
    #       "lng" => -123.0873365
    #     },
    #     "end_location" => {
    #       "name" => "800 Kingsway",
    #       "lat" => 49.2553636,
    #       "lng" => -123.0873365
    #     },
    #     "shift_start" => "8:00",
    #     "shift_end" => "12:00"
    #   }
    # }

    users_of_the_day = User.all
    n = 1
    users_of_the_day.each do |user|
      fleet["vehicle_#{n}"] =  {
        "vehicle_1" => {
          "start_location" => {
            "name" => user.address,
            "lat" => user.latitude,
            "lng" => user.longitude
          },
          "end_location" => {
            "name" => user.address,
            "lat" => user.latitude,
            "lng" => user.latitude,
          },
          "shift_start" => "8:00",
          "shift_end" => "20:00"
        }
      }
      n += 1
    end
  end
end

# HASH Routific
# {
#   "visits": {
#     "order_1": {
#       "location": {
#         "name": "patient1",
#         "lat": 49.48.1724849,
#         "lng": 2.254809000000023
#       },
#       "start": "9:00",
#       "end": "12:00",
#       "duration": 20
#     },
#     "order_2": {
#       "location": {
#         "name": "patient2",
#         "lat": 48.1701705,
#         "lng": 2.2505178000000114
#       },
#       "start": "9:00",
#       "end": "12:00",
#       "duration": 15
#     },
#     "order_3": {
#       "location": {
#         "name": "patient3",
#         "lat": 48.10240659999999,
#         "lng": 2.237859399999934
#       },
#       "start": "8:00",
#       "end": "9:00",
#       "duration": 15
#     }
#   },
#   "fleet": {
#     "vehicle_1": {
#       "start_location": {
#         "id": "home",
#         "name": "800 Kingsway",
#         "lat": 47.83273699999999,
#         "lng": 1.9290619999999308
#       },
#       "end_location": {
#         "id": "Home",
#         "name": "800 Kingsway",
#         "lat": 47.83273699999999,
#         "lng": 1.9290619999999308
#       },
#       "shift_start": "8:00",
#       "shift_end": "12:00"
#     }
#   }
# }

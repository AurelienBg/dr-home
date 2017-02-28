require 'routific'

class RoutificJob < ApplicationJob
  queue_as :default

  attr_reader :route_consultations

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
    @route_consultations = Routific.getRoute(data)

    # p routes = JSON.parse(route_consultations)

    add_consultation_from_hash(route_consultations)
  end

  private

  def buid_data_hash(visits, fleet)
    # filter demands with due_date ? today and status == "pending"
    # demands_to_dispatch = Demand.where("due_date >= ?", Date.today)
    demands_to_dispatch = Demand.where('due_date >= ? AND assigned = ? ', Date.today, false )
    # rajouter start_date et .near de geocoding

    n = 1
    demands_to_dispatch.each do |demand|
      visits["demand_#{demand.id}"] =  {
        "start" => "9:00",
        "end" => "20:00",
        "duration" => 20,
        "location" => {
          "name" => demand.address,
          "lat" => demand.latitude,
          "lng" => demand.longitude
        },
        # "priority" => (demand.due_date  < Date.today + 2.days ? "high" : "regular")
        # pas de priority pour la demo!!!!
      }
      n += 1
    end

    users_of_the_day = User.where.not(latitude: nil, longitude: nil)
    # where lat and Long pas NIL
    n = 1
    users_of_the_day.each do |user|
      fleet["user_#{user.id}"] =  {
        "start_location" => {
          "name" => user.address,
          "lat" => user.latitude,
          "lng" => user.longitude
        },
        "end_location" => {
          "name" => user.address,
          "lat" => user.latitude,
          "lng" => user.longitude
        },
        "shift_start" => "8:00",
        "shift_end" => "21:00"
      }
      n += 1
    end
  end

  def add_consultation_from_hash(route_consultations)

    # 1. parcours de route_consultations, hash "solution"
    route_consultations.vehicleRoutes.each do |key, value|
      # key = vehicule_i
      # value = array_of_stops

      # 2. retrouver le  user (via vehicule_x) et le bon demand (order y)
      user_id = key.gsub("user_",'') # "user_18" becomes "18"

      value.each_with_index do |item, index|
        if index == 0 || index == value.count - 1 # first and last are itinerary without consultation
          # do nothing
        else
          user = User.find(user_id)
          # 3. recuperer les stops
          demand_id = item.location_id.gsub("demand_",'')
          demand = Demand.find(demand_id)
          # 4. Creer des consultations a partir des stops
          c = Consultation.new(
            start_time: item.arrival_time,
            end_time: item.finish_time,
            user: user,
            demand: demand,
            status: "confirmed")
          c.save
          demand.assigned = true
          demand.save
        end
      end
    end
  end
end

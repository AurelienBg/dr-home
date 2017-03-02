module RoutificPrep

  def build_data_hash(i)
    run_date = Date.today + 1.day
    # in the method, i is the number of day for the forecast
    # filter demands with due_date ? today and status == "pending"
    # demands_to_dispatch = Demand.where("due_date >= ?", Date.today)

    # we remove all forecast of the previous day to prepare the forecast of the day
    demands_to_reset = Demand.where('assigned = ? AND forecast = ? ', false, true )
    demands_to_reset.each do |d|
      d.forecast = false
      d.save
    end

    demands_to_dispatch = Demand.where('due_date >= ? AND assigned = ? AND request_time <= ? ', run_date + i, false, run_date + i )
    # rajouter .near de geocoding pour utiliser le radius du User
    visits = {}
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

    fleet = {}
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
        "shift_start" => user.start_time.strftime('%H:%M'),
        "shift_end" => user.end_time.strftime('%H:%M')
      }
      n += 1
    end
    return {visits: visits, fleet: fleet}
  end

  def add_consultation_from_hash(route_consultations, i)
    run_date = Date.today + 1.day
    # 1. parcours de route_consultations, hash "solution"


    # CHECK IT IS THE RIGHT UNLESS CONDITON
    unless route_consultations == nil
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
            if Demand.near([user.latitude, user.longitude], user.radius).include? demand
              status = i > 0 ? "forecasted" : "confirmed"

              # Disregard demand that were already forecasted : do nothing
              if i == 0 || !demand.forecast
                c = Consultation.new(
                  date: (Date.today + 1.day),
                  start_time: item.arrival_time,
                  end_time: item.finish_time,
                  user: user,
                  demand: demand,
                  doctor_departure_lat: user.latitude,
                  doctor_departure_lng: user.longitude,
                  status: status)
                c.save
                demand.assigned = i == 0 ? true : false
                demand.forecast = i > 0 ?  true : false
                demand.save
              end
            end
          end
        end
      end
    end
  end
end

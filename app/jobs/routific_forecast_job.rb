require 'routific'
require 'routific_prep'

class RoutificForecastJob < ApplicationJob
  include RoutificPrep
  queue_as :default

  attr_reader :route_consultations_1, :route_consultations_2, :route_consultations_3

  # def perform(*args)  with or without args !
  def perform
    # import data from ActiveRecords to build the input for Routific

    # visits_1 = {}
    # fleet_1 = {}
    # visits_2 = {}
    # fleet_2 = {}
    # visits_3 = {}
    # fleet_3 = {}

    data_1 = build_data_hash(1)
    data_2 = build_data_hash(2)
    data_3 = build_data_hash(3)

    # data = hash
    Routific.setToken(ENV['ROUTIFIC_API'])
    @route_consultations_1 = Routific.getRoute(data_1)
    @route_consultations_2 = Routific.getRoute(data_2)
    @route_consultations_3 = Routific.getRoute(data_3)

    # p routes = JSON.parse(route_consultations)
    add_consultation_from_hash(route_consultations_1, 1)
    add_consultation_from_hash(route_consultations_2, 2)
    add_consultation_from_hash(route_consultations_3, 3)
  end
end

require 'routific'
require 'routific_prep'

class RoutificJob < ApplicationJob
  include RoutificPrep
  queue_as :default

  attr_reader :route_consultations

  # def perform(*args)  with or without args !
  def perform
    # import data from ActiveRecords to build the input for Routific
    data = build_data_hash(0)

    # data = hash
    Routific.setToken(ENV['ROUTIFIC_API'])
    @route_consultations = Routific.getRoute(data)

    # p routes = JSON.parse(route_consultations)
    add_consultation_from_hash(route_consultations, 0)
  end
end

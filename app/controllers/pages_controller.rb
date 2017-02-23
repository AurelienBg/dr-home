require 'json'
require 'open-uri'

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @user = current_user
  end

  def dashboard
    @user = current_user
    @hash = Gmaps4rails.build_markers(@user) do |user, marker|
        marker.lat user.latitude
        marker.lng user.longitude
      end
    min_consultation = @user.min_consultation
    @date = Date.new(2017, 2, 23)
    # @matched_demand = Demand.near(get_user_coord(@user), @user.fav_distance)
    @next_round = Demand.where(due_date: @date).near(get_user_coord(@user), @user.fav_distance).first(set_min_consultation(@user.min_consultation))
    # call_road_API
  end

  private

  def get_user_coord(user)
    if user.fav_city.nil?
      coord = [user.latitude, user.longitude]
    else
      coord = user.fav_city
    end
    coord
  end

  def set_min_consultation(min_consultation)
    min_consultation.nil? ? 8 : min_consultation
  end

  def call_road_API
    url = "https://roads.googleapis.com/v1/snapToRoads?path=-35.27801,149.12958|-35.28032,149.12907|-35.28099,149.12929|-35.28144,149.12984|-35.28194,149.13003|-35.28282,149.12956|-35.28302,149.12881|-35.28473,149.12836
        &interpolate=true
        &key=#{ENV['GOOGLE_API_ROAD_KEY']}"
    response = open(url).read
    result = JSON.parse(response)
    raise
  end
end

require 'json'
require 'open-uri'

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :map ]
  before_action :check_if_user_profile_completed, only: :dashboard

  def home
    @user = current_user
  end

  def map
  end

  def dashboard
    @user = current_user
    @hash = Gmaps4rails.build_markers(@user) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end
    min_nb_consult = @user.min_nb_consult
    @date = Date.new(2017, 2, 23)

    # @matched_demand = Demand.near(get_user_coord(@user), @user.fav_distance)
    @next_round = Demand.where(due_date: @date).near(get_user_coord(@user), @user.radius).first(set_min_consultation(@user.min_nb_consult))
    @hash2 = Gmaps4rails.build_markers(@next_round) do |user, marker|
        marker.lat user.latitude
        marker.lng user.longitude
      end
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

  private

  def check_if_user_profile_completed
    unless current_user.profile_completed?
      flash[:notice] = 'You must complete your profile first!'
      redirect_to edit_user_path(current_user)
    end
  end
end

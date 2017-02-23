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
    @next_round = Demand.where(city: @user.fav_city, due_date: @date).first(min_consultation)
  end
end

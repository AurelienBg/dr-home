class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  before_action :check_if_user_profile_completed, only: :dashboard

  def home
    @user = current_user
  end

  def dashboard
    @user = current_user
    @hash = Gmaps4rails.build_markers(@user) do |user, marker|
        marker.lat user.latitude
        marker.lng user.longitude
      end
    min_nb_consult = @user.min_nb_consult
    @date = Date.new(2017, 2, 23)
    @next_round = Demand.where(city: @user.fav_city, due_date: @date).first(min_nb_consult)
  end

  private

  def check_if_user_profile_completed
    unless current_user.profile_completed?
      flash[:notice] = 'You must complete your profile first!'
      redirect_to edit_user_path(current_user)
    end 
  end
end

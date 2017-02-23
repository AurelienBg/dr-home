class UsersController < ApplicationController
  before_action :set_user_and_authorize, only: [:edit, :update]

  def edit
    if @user.latitude
      @hash = Gmaps4rails.build_markers(@user) do |user, marker|
        marker.lat user.latitude
        marker.lng user.longitude
      end
    end
  end

  def update

    if @user.update(user_params)
      redirect_to dashboard_path, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_user_and_authorize
    @user = current_user
    authorize(@user)
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name,:specialty, :address, :city, :zipcode, :phone, :min_nb_consult, :duration_consult, :sex, :cardnumber, :fav_city, :radius, :photo_id, :photo_prof_doc, :validated, :photo)
  end
end



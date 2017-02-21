class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :store_current_location, :unless => :devise_controller?
  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:
      [:username,
        :email,
        :password,
        :first_name,
        :last_name,
        :specialty,
        :address,
        :city,
        :zipcode,
        :phone,
        :min_consultation,
        :sex,
        :cardnumberend
      ])
  end

  def store_current_location
    if params[:controller] == 'consultations' && params[:action] == 'create'
      store_location_for(:user, request.url.gsub('consultations', ''))
    end
  end
end

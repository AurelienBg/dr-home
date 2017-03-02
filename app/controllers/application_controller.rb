class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :store_current_location, :unless => :devise_controller?
  before_action :authenticate_user!

  include Pundit

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end

  def after_sign_in_path_for(resource)
    # if resource.profile_completed?
    #   dashboard_path
    # else
    edit_user_path(resource)
    # end
  end

  def default_url_options
  { host: ENV['HOST'] || 'localhost:3000' }
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

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

  def default_url_options
  { host: ENV['HOST'] || 'localhost:3000' }
end

end

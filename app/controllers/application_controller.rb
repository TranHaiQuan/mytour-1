class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include AdminsHelper
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, only: [:show, :delete]
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit :sign_up,
      keys: [:name, :email, :phone, :sex, :address]
  end
end

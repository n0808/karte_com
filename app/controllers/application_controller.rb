class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: [:new]
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  private
  def production?
    Rails.env.production?
  end

end

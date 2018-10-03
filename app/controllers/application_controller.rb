class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  devise_group :user, contains: %i[student teacher]

  private

  def after_sign_in_path_for(_resource)
    dashboard_root_path
  end

  protected

  def configure_permitted_parameters
    attributes = %i[first_name last_name school_id]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end
end

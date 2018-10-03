class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  devise_group :user, contains: [:student, :teacher]

  private

  def after_sign_in_path_for(resource)
    dashboard_root_path
  end
end

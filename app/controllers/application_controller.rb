class ApplicationController < ActionController::API
  before_action :update_allowed_parameters, if: :devise_controller?
  # protect_from_forgery with: :exception
  # skip_before_action :verify_authenticity_token
  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username email password role])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[username email role password current_password])
  end
end

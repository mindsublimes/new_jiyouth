class ApplicationController < ActionController::Base
  add_flash_types :warning, :danger, :success
	protect_from_forgery with: :exception

	before_action :configure_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(resource)
    if resource.admin?
      admin_members_path
    else
      home_index_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:role, :email, :password)}

	  devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:role, :email, :password, :current_password)}
  end
end

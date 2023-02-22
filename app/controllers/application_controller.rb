class ApplicationController < ActionController::Base
  layout :layout_by_user_types # works like a before action
  add_flash_types :warning, :danger, :success
	protect_from_forgery with: :exception

	before_action :configure_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(resource)
    if resource.admin?
      admin_dashboard_index_path
    else
      home_index_path
    end
  end

  def layout_by_user_types
    if current_user.present? && current_user.admin?
      "application"
      # application was here to show admin app landing page.
    else
      "application"
    end
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:role, :email, :password)}

	  devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:role, :email, :password, :current_password)}
  end
end

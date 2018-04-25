class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  
  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit({roles: []}, :first_name, :last_name, :username, :birthday, :email, :password, :remember_me)}
      devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit({roles: []}, :email, :password, :remember_me)}
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit({roles: []}, :first_name, :last_name, :username, :birthday, :address, :about, :email, :password, :current_password, :remember_me)}
      
  end
  
end
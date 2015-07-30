class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # before_action :configure_permitted_parameters, if: :devise_controller?

  before_action{
	# session[:controller] = Rails.application.routes.recognize_path(request.referer)[:controller]
	# session[:action]     = Rails.application.routes.recognize_path(request.referer)[:action]
	# puts 111111111111111111111111111
	# puts session[:controller]
  }

  def current_ability
    @current_ability ||= Ability.new(current_member)
  end 


  # cancancan exception
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :notice => exception.message
  end

  protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) << :username
  # end
end

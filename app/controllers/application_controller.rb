class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token

  def after_sign_in_path_for(resource)
    user_path(resource)
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def ahter_sign_up_path_for(resource)
    flash[:notice] = "Welcome! You have signed up successfully."
  end

  def ahter_sign_out_path_for(resource)
    flash[:notice] = "Signed out successfully."
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:email])
    end
end

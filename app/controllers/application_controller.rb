class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    protected

    def configure_permitted_parameters
        attributes = [:firstname, :lastname, :email, :password, :password_confirmation]
        devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    end
  
end 
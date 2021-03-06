class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
    def configure_permitted_parameters
       devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :age, :language, :sex, :phone, :provincia, :canton, :distrito, :barrio,])
    end
  end
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up).push(:company_name, :website)
  # end

class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: %i[name email password password_confirmation])
    end

    private
    # def authenticate_user!
    #   if user_signed_in?
    #     super
    #   else
    #     redirect_to splashes_path if request.original_fullpath != splashes_path
    #   end
    # end
end

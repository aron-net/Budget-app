class SplashesController < ApplicationController
    before_action :set_splash, only: %i[ show edit update destroy ]


  # GET /splashes or /splashes.json
  def index
    # if current_user.nil?
    #     render 'splashes/index'
    # else 
    #     redirect_to new_user_registration_path
    # end
  end  
end

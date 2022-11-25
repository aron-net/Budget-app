class SplashesController < ApplicationController
    before_action :set_splash, only: %i[ show edit update destroy ]


    # GET /splashes or /splashes.json
    # def index
    #     if current_user.nill?
    #         render 'index'
    #     else 
    #         redirect_to categories_path
    #     end
    # end  
end

class TalksController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]

    def index 
      @talks = Talk.all
    end

    def show
      @talk = Talk.find(params[:id])
    end

end

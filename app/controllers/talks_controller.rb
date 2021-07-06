class TalksController < ApplicationController
    skip_before_action :authenticate_user!, only: :index

    def index 
      @talks = Talk.all
    end
end

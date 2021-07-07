class TalksController < ApplicationController
    skip_before_action :authenticate_user!, only: :index

    def index 
      if params[:query].present?
        @talks = Talk.search_with_pg(params[:query])  
      else  
        @talks = Talk.all
      end
    end
end

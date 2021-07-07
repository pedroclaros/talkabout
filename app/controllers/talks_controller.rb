class TalksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  
  def index 
    categories = Category.pluck(:title)
    selected_categories = []
    categories.each do |p|
      if params["#{p}"] == "1"
        selected_categories << Category.find_by(title: p)
      end
    end
    @talks = Talk.all
    if selected_categories != []
      @talks = []
      selected_categories.each do |category|
        category.talks.each do |talk|
          @talks << talk 
        end
      end
    end
    
    if params[:query].present? || params[:filter].present?
      talkarray = @talks
      
      
      if selected_categories.count != 0
        @talks = []
        
        talkarray.each do |talk|
          
          Talk.search_with_pg(params[:query] || params[:filter]).each do |pgtalk|
            
            if pgtalk.id == talk.id
              @talks << pgtalk
            end
          end
        end
      else
        @talks = Talk.search_with_pg(params[:query] || params[:filter])
      end  
    end
  end
 
  def show
    @talk = Talk.find(params[:id])
  end

end

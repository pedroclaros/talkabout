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
    @appointment = Appointment.new
  end
  
  def new
    @talk = Talk.new
  end

  def create
    @talk = Talk.new(talk_params)
    @talk.user = current_user
    if @talk.save
      redirect_to talk_path(@talk)
    else
      render :new
    end
  end

  def talk_params
    params.require(:talk).permit(:title, :description, :time, :date, :category_id, :photo)
  end

end

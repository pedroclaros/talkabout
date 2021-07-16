class TalksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_talk, only: [:show, :edit, :update, :destroy]
  

  def index 
    categories = Category.pluck(:title)
    selected_categories = []
    categories.each do |p|
      if params["#{p}"] == "on"
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
    @appointment = Appointment.new
    @favorite = Favorite.new
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
  
  def edit
  end

  def update
    @talk.update(talk_params)
    redirect_to talk_path(@talk)
  end

  def destroy
    @talk.destroy
    redirect_to myprofile_path
    # flash[:notice] = "Charla borrada"
  end
private


  def set_talk
    @talk = Talk.find(params[:id])
  end

  def talk_params
    params.require(:talk).permit(:title, :description, :time, :date, :price, :category_id, :photo, :capacity)
  end

  
end

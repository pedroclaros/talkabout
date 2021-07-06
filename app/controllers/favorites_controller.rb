class FavoritesController < ApplicationController

  def create
    @talk = Talk.find(params[:talk_id])
    @favorite = Favorite.new()
    @favorite.user = current_user
    @favorite.talk = @talk
    @render = true
    if @favorite.save
      flash[:notice] = "Agregado a favoritos"
      @render = false
      redirect_to talk_path(@talk)

    end
  end

  # if @appointment.save
  #     redirect_to confirmation_path(service)
  # else
  #     render :new
  # end
  # end


  # def destroy
  # @appointment = Appointment.find(params[:id])
  # @appointment.delete
  # authorize @appointment
  # redirect_to confirmation_path
  # flash[:notice] = "Destruiste tu reserva"
  # end
      
  private
      
 
end


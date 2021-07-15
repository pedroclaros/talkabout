class FavoritesController < ApplicationController

  def create
    @talk = Talk.find(params[:talk_id])
    current_user.favorite(@talk)
    # @favorite = Favorite.new
    # @favorite.user = current_user
    # @favorite.talk = @talk
    # @render = true
      # flash[:notice] = "Agregado a favoritos"
      redirect_to talk_path(@talk)
  end

  # if @appointment.save
  #     redirect_to confirmation_path(service)
  # else
  #     render :new
  # end
  # end

def destroy
  @talk = Talk.find(params[:id])
  current_user.unfavorite(@talk)
  redirect_to myprofile_path
  # flash[:notice] = "Favorito borrado"
end 
      
  private
      
 
end


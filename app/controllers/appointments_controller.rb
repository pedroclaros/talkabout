class AppointmentsController < ApplicationController
    
    def create
        @talk = Talk.find(params[:talk_id])
        appointment = Appointment.new
        appointment.user = current_user
        appointment.talk = @talk
        if appointment.save
        flash[:notice] = "Agregado a citas"
        redirect_to myprofile_path
        end
    end

    def destroy
        @appointment = Appointment.find(params[:id])
        @appointment.delete
        redirect_to myprofile_path
        flash[:notice] = "Appointment borrado"
    end
end
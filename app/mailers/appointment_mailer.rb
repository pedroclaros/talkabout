class AppointmentMailer < ApplicationMailer
  def create_confirmation
    @appointment = params[:appointment]

    mail(
      to:       @appointment.user.email,
      subject:  "Appointment #{@appointment.id} created!"
    )
  end
end
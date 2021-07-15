class AppointmentMailer < ApplicationMailer
  def confirmed
    @appointment = params[:appointment]

    mail(
      to:       @appointment.user.email,
      subject:  "Appointment #{@appointment.id} created!"
    )
  end
end
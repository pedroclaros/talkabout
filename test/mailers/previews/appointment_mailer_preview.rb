# Preview all emails at http://localhost:3000/rails/mailers/appointment_mailer
class AppointmentMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/appointment_mailer/confirmed
  def confirmed
    user = User.first
    appointment = Appointment.first
    # This is how you pass value to params[:user] inside mailer definition!
    AppointmentMailer.with(appointment: appointment).confirmed.deliver_now
  end

end

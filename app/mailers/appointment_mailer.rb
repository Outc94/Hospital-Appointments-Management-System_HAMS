class AppointmentMailer < ApplicationMailer
  def mail_patients(patient)
     mail(to: patient.email, subject: 'The Appointment with your Doctor has been canceled')
  end
  def mail_doctors(doctor)
     mail(to: doctor.email, subject: 'The Appointment with your Patient has been canceled')
  end
end

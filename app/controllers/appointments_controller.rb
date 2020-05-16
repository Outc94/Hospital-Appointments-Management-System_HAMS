class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  before_action :set_doctors, only: [:new, :create]
  before_action :set_patients, only: [:new, :create]

  def index
    @appointments = Appointment.all.order(:date, :time)
    @search = Appointment.all.ransack(params[:q])
    if params[:q]
      @appointments = @search.result.page params[:page]
    elsif params[:sort_date]
      @appointments = Appointment.all.order('date DESC').page params[:page]
    else
     @appointments = Appointment.order(:date, :time).page params[:page]
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
    @patient = @appointment.patient.find(params[:id])
    @doctor = @appointment.doctor.find(params[:doctor_id])
  end

  def new
    @appointment = Appointment.new
  end

  def edit
  end

  def create
      @appointment = Appointment.new(appointment_params)
      if @appointment.save
       redirect_to appointments_path
      else
       render :new
    end
  end

  def destroy
    @appointment.destroy
    doctor = @appointment.doctor
    patient = @appointment.patient
    if @appointment.destroy
      AppointmentMailer.mail_doctors(doctor).deliver
      AppointmentMailer.mail_patients(patient).deliver
    end
    redirect_to appointments_path
  end

#  def destroy
#   @agenda = Agenda.find(params[:id])
#   destroy_agenda = @agenda
#   if @agenda.present?
#      @agenda.destroy
#      team_id = destroy_agenda.team_id
  #   team_members = User.where(keep_team_id: team_id)
  #    team_members.each do |member|
#        TeamMailer.mail_users(member).deliver
#      end
#      redirect_to dashboard_url,  notice: "The agenda is successfully destroyed and mails are sent to the users"
#   end
#  end

  private
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    def set_patients
      @patients = Patient.all.order("last_name")
    end

    def set_doctors
      @doctors = Doctor.all.order("name")
    end

    def appointment_params
      params.require(:appointment).permit(:patient_id, :doctor_id, :date, :time)
    end
end

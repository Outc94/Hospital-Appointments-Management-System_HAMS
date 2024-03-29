class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  before_action :set_doctors, only: [:new, :create]
  before_action :set_patients, only: [:new, :create]
  before_action :set_no_access, only: [:index, :show]

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
    @doctor = @appointment.doctor
    @appointments = @doctor.appointments
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
  #  doctor = @appointment.doctor
  #  patient = @appointment.patient
  #  if @appointment.destroy
  #    AppointmentMailer.mail_doctors(doctor).deliver
  #    AppointmentMailer.mail_patients(patient).deliver
  #  end
    redirect_to appointments_path
  end


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

    def set_no_access
     if current_user.position == "Patient"
       redirect_to doctors_path,  notice: "You don't have access to that URL"
     end
   end
end

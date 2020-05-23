class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :update, :edit, :destroy]
  before_action :set_no_access
  def index
    #@patients = Patient.all.order("last_name")
      @patients = Patient.order(:last_name).page params[:page]
      @search = Patient.all.ransack(params[:q])
      if params[:q]
        @patients = @search.result.page params[:page]
      else
       @patients = Patient.order(:last_name).page params[:page]
      end
  end

  def show
    @appointments = @patient.appointments.order("date", "time")
    @notes = @patient.notes.all.order("created_at")
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      age = Date.today.year - @patient.date_of_birth.year
      @patient.update(age: age)
      redirect_to @patient
    else
      render :new
    end
  end

  def update
      if @patient.update(patient_params)
         redirect_to @patient
      else
        render :edit
    end
  end

  def destroy
    @patient.destroy
    redirect_to patients_path
  end

  private
    def set_patient
      @patient = Patient.find(params[:id])
    end

    def patient_params
      params.require(:patient).permit(:first_name, :last_name, :age, :date_of_birth, :language, :sex, :phone, :street, :city, :state, :zip, :email)
    end

    def set_no_access
     if current_user.position == "Patient"
       redirect_to doctors_path,  notice: "You don't have access to that URL"
     end
   end
end

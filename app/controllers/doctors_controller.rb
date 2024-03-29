class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :update, :edit, :destroy]

  def index
    @users = User.all
    @doctors = Doctor.order(:name).page params[:page]
    @search = Doctor.all.ransack(params[:q])
    if params[:q]
      @doctors = @search.result.page params[:page]
    elsif params[:sort_speciality]
      @doctors = Doctor.all.order('speciality ASC').page params[:page]
    else
     @doctors = Doctor.order(:name).page params[:page]
    end
  end

  def show
    @doctor = Doctor.find(params[:id])
    @appointments = @doctor.appointments.order("date", "time")
    @comments = @doctor.comments.all.order("created_at")
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to doctors_path
    else
      render :new
    end
  end

  def update
      if @doctor.update(doctor_params)
         redirect_to @doctor
      else
        render :edit
    end
  end

  def destroy
    @doctor.destroy
    redirect_to doctors_path
  end

  private
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    def doctor_params
      params.require(:doctor).permit(:name, :speciality, :school, :phone, :email)
    end
end

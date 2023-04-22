class Api::V1::DoctorsController < ApplicationController
    before_action :set_doctor, only: %i[show update destroy]

    def index
      @doctors = Doctor.all
      render json: @doctors
    end
  
    def show
      return doctor_not_found unless @doctor
  
      render json: @doctor
    end
  
    def new
      @doctor = Doctor.new
    end
  
    def create
      @doctor = Doctor.new(doctor_params)
      return render json: @doctor.errors, status: :unprocessable_entity unless @doctor.save
  
      render json: @doctor, status: :created
    end
  
    def update
      return render json: @doctor.errors, status: :unprocessable_entity unless @doctor.update(doctor_params)
    end
  
    def destroy
      @doctor&.destroy
    end
  
    private
  
    def set_doctor
      @doctor = Doctor.find_by(id: params[:id])
    end
  
    def doctor_params
      params.require(:doctor).permit(:name, :specialization, :email, :phone, :image, :availability)
    end
  
    def doctor_not_found
      render json: { error: 'Doctor not found' }, status: :not_found
    end
end

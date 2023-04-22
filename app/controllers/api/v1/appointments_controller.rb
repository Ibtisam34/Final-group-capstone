class Api::V1::AppointmentsController < ApplicationController
    before_action :set_appointment, only: %i[show update destroy]

    def index
      @appointments = Appointment.all
      render json: @appointments
    end
  
    def show
      return appointment_not_found unless @appointment
  
      render json: @appointment
    end
  
    def new
      @appointment = Appointment.new
    end
  
    def create
      @appointment = Appointment.new(appointment_params)
      return render json: @appointment.errors, status: :unprocessable_entity unless @appointment.save
  
      render json: @appointment, status: :created
    end
  
    def update
      return render json: @appointment.errors, status: :unprocessable_entity unless @appointment.update(appointment_params)
    end
  
    def destroy
      appointment = Appointment.find(params[:id])
      appointment.destroy
      render json: { status: 'success', message: 'Appointment deleted' }
    end
    
  
    private
  
    def set_appointment
      @appointment = Appointment.includes(:doctor, :user).find_by(id: params[:id])
    end
  
    def appointment_params
      params.require(:appointment).permit(:date, :user_id, :doctor_id)
    end
  
    def appointment_not_found
      render json: { error: 'Appointment not found' }, status: :not_found
    end
end

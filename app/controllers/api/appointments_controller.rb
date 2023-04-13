class Api::AppointmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: {
      status: { code: 200, message: 'Appointment were fetched sucessfully.' },
      data: Appointment.all
    }
  end

  def show
    appointment = Appointment.find_by(id: params[:id])
    if appointment.nil?
      render json: {
        status: { code: 404, message: 'Appointment not found.' }
      }
    else
      render json: {
        status: { code: 200, message: 'The Appointment was fetched sucessfully.' },
        data: appointment
      }
    end
  end

  def create
    @appointment = current_user.appointment.new(appoint_params)

    if @appointment.save
      render json: {
        status: { code: 200, message: 'Appointment was created sucessfully.' },
        data: @appointment
      }
    else
      render json: {
        status: { code: 404, message: 'The Appointment could not be created!' }
      }
    end
  end

  def update
    @appointment = Appointment.find(params[:id])

    if @appointment.nil?
      render json: {
        status: { code: 404, message: 'The Appointment  not found' }
      }
      return
    end

    if @appointment.update(doctor_params)
      render json: {
        status: { code: 200, message: 'Appoinment updated successfully' },
        data: @appointment
      }
    else
      render json: {
        status: { code: 500, message: 'Bad request, Doctor could not be updated' }
      }
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])

    if @doctor.nil?
      render json: {
        status: { code: 404, message: 'Appointment was not found' }
      }
      return
    end
    @appointment.destroy
    render json: {
      status: { code: 200, message: 'Appointment was deleted successfully' }
    }
  end

  private

  def appoint_params
    params.require(:appointment).permit(:pickup_date, :return_date, :doctor_id)
  end
end

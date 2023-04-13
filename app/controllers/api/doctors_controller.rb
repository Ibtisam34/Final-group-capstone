class Api::DoctorsController < ApplicationController
  before_action :authenticate_user!
  include Devise::Controllers::Helpers

  def index
    render json: {
      status: { code: 200, message: 'Doctors were fetched sucessfully.' },
      data: Doctor.all
    }
  end

  def show
    doctor = Doctor.find_by(id: params[:id])
    if doctor.nil?
      render json: {
        status: { code: 404, message: 'Doctor not found.' }
      }
    else
      render json: {
        status: { code: 200, message: 'The Doctor was fetched sucessfully.' },
        data: doctor
      }
    end
  end

  def create
    @doctor = current_user.doctors.new(doctor_params)

    if @doctor.save
      render json: {
        status: { code: 200, message: 'Doctor created sucessfully.' },
        data: @doctor
      }
    else
      render json: {
        status: { code: 404, message: 'The Doctor could not be created!' }
      }
    end
  end

  def update
    @doctor = Doctor.find(params[:id])

    if @doctor.nil?
      render json: {
        status: { code: 404, message: 'The Doctor not found' }
      }
      return
    end

    if @doctor.update(doctor_params)
      render json: {
        status: { code: 200, message: 'Doctor updated successfully' },
        data: @doctor
      }
    else
      render json: {
        status: { code: 500, message: 'Bad request, Doctor could not be updated' }
      }
    end
  end

  def destroy
    @doctor = Doctor.find(params[:id])

    if @doctor.nil?
      render json: {
        status: { code: 404, message: 'Doctor not found' }
      }
      return
    end
    @doctor.destroy
    render json: {
      status: { code: 200, message: 'Doctor was deleted successfully' }
    }
  end

  def doctor_params
    params.require(:doctor).permit(:name, :specialty, :email, :phone)
  end
end

require 'rails_helper'
RSpec.describe Appointment, type: :model do
  before :each do
    @user = User.new(name: 'testAppointment', email: 'appointment@test.com')
    @user.save
    @doctor = Doctor.new(
      name: 'Dr. Appoint Doe',
      specialization: 'Cardiology',
      email: 'apointer@example.com',
      phone: '1234567890'
    )
    @doctor.save
  end
  subject { Appointment.create(doctor: @doctor, date: '2023-03-24') }
  it 'it should have instance of ApplicationRecord' do
    expect(Appointment < ApplicationRecord).to eq(true)
  end
end

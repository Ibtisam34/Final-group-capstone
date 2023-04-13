require 'rails_helper'

RSpec.describe Appointment, type: :model do
  before :each do
    @user = User.new(username: 'testAppointment', email: 'appointment@test.com', password: '123123')
    @user.save
    @doctor = Doctor.new(
      user: @user,
      name: 'Dr. Appoint Doe',
      specialization: 'Cardiology',
      email: 'apointer@example.com',
      phone: '1234567890'
    )
    @doctor.save
  end

  subject { Appointment.create(user: @user, doctor: @doctor, pickup_date: '2023-03-24', return_date: '2023-03-27') }
  it 'it should have instance of ApplicationRecord' do
    expect(Appointment < ApplicationRecord).to eq(true)
  end

  it 'Shuld be pickup time is 2023-03-24' do
    expect(subject.pickup_date).to eq('2023-03-24')
  end

  it 'Shuld be return time is 2023-03-27' do
    expect(subject.return_date).to eq('2023-03-27')
  end

  it 'should not be pickup_date 2032-07' do
    expect(subject.pickup_date).to_not eq('2023-07')
  end

  it 'it should have pickup_date' do
    subject.pickup_date = nil
    expect(subject).to_not be_valid
  end

  it 'it should have return_date' do
    subject.return_date = nil
    expect(subject).to_not be_valid
  end
end

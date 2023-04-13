require 'rails_helper'

RSpec.describe Doctor, type: :model do
  before :each do
    @user = User.new(username: 'test', email: 'test@test.com', password: '123123')
    @user.save
  end

  subject do
    Doctor.new(
      user: @user,
      name: 'Dr. John Doe',
      specialization: 'Cardiology',
      email: 'johndoe@example.com',
      phone: '1234567890'
    )
  end
  before { subject.save }

  describe 'validate data' do
    it 'it should have a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'it should have a specialization' do
      subject.specialization = nil
      expect(subject).to_not be_valid
    end

    it 'it should have an email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'it should have a valid email format' do
      subject.email = 'invalidemail'
      expect(subject).to_not be_valid
    end

    it 'it should have a phone number' do
      subject.phone = nil
      expect(subject).to_not be_valid
    end

    it 'it should have a phone number with a minimum length of 10' do
      subject.phone = '123456'
      expect(subject).to_not be_valid
    end
  end
end

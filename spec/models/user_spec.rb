require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.create(username:'Riyana', email:'Riyana1@gmail.com', password:'passmark', role:1)
  end

  context 'Test validations' do
    it 'checks that the username is present' do
      @user.username = 'Riyana'
      expect(@user).to be_valid
    end

    it 'the username should be present' do
      @user.username = ''
      expect(@user).to_not be_valid
    end
  end

  context 'Test associations' do
    it 'has many doctors' do
      expect(@user).to respond_to(:doctors)
      expect(@user.doctors).to be_empty
    end
  end
end

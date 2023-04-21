require 'rails_helper'
RSpec.describe User, type: :model do
  before :each do
    @user = User.create(name: 'Riyana', email: 'Riyana1@gmail.com')
  end
  context 'Test validations' do
    it 'checks that the username is present' do
      @user.name = 'Riyana'
      expect(@user).to be_valid
    end
    it 'the name should be present' do
      @user.name = ''
      expect(@user).to_not be_valid
    end
  end
end

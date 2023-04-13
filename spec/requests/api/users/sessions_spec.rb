require 'swagger_helper'
RSpec.describe 'api/users/sessions', type: :request do
  describe 'api/login' do
    let(:user) { User.new(username: 'Odai', email: 'Odai@gmail.com', password: 'great478') }
    before { user.save }
    context 'DELETE /api/logout' do
      it 'returns a 204 response with no body' do
        # log in the user first
        post '/api/login', params: { email: user.email, password: user.password }
        # send a GET request to log out the user
        delete '/api/logout'
        # expect a 200 response with a success message
        expect(response).to have_http_status(:ok)
        expect(response.body).to include('You are logged out.')
        expect(JSON.parse(response.body)['status']).to eq('00')
        expect(JSON.parse(response.body)['message']).to eq('You are logged out.')
      end
    end
  end
end

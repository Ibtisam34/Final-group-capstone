class Api::Users::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(_resource, _opts = {})
    login_success && return if resource.persisted?
  end

  def login_success
    render json: {
      status: '00',
      message: 'Login sucessful.',
      data: UserSerializer.new(current_api_user).serializable_hash[:data][:attributes]
    }
  end

  def login_failure
    render json: {
      status: '01',
      message: 'Login failure, try again!'
    }
  end

  def respond_to_on_destroy
    render json: {
      status: '00',
      message: 'You are logged out.'
    }, status: :ok
  end
end

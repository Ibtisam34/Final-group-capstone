class Users::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(_resource, _opts = {})
    login_success && return if resource.persisted?
  end

  def login_success
    render json: {
      status: { code: 200, message: 'Login sucessful.' },
      user: current_user,
      data: UserSerializer.new(current_user).serializable_hash[:data][:attributes]
    }, status: :ok
  end

  def login_failure
    render json: {
      status: 401,
      message: 'Login failure, try again!'
    }, status: :unprocessable_entity
  end

  def respond_to_on_destroy
    render json: {
      status: 200,
      message: 'You are logged out.'
    }, status: :ok
  end
end

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    register_success && return if resource.persisted?

    register_failed
  end

  def register_success
    render json: {
      status: { code: 200, message: 'User was register sucessfully.' },
      user: current_user,
      data: UserSerializer.new(resource).serializable_hash[:data][:attributes]
    }, status: :ok
  end

  def register_failed
    render json: {
      status: '401',
      message: 'Something went wrong.'
    }
  end
end

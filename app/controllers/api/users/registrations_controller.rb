class Api::Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    register_success && return if resource.persisted?

    register_failed
  end

  def register_success
    render json: {
      status: '00',
      message: 'Signed up sucessfully.',
      data: UserSerializer.new(resource).serializable_hash[:data][:attributes]
    }
  end

  def register_failed
    render json: {
      status: '04',
      message: 'Something went wrong.'
    }
  end
end

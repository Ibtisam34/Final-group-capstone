require 'swagger_helper'

RSpec.describe 'api/appointments', type: :request do
  path '/api/users/{user_id}/appointments' do
    # You'll want to customize the parameter types...
    parameter name: 'user_id', in: :path, type: :string, description: 'user_id'

    get('list appointments') do
      response(200, 'successful') do
        let(:user_id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create appointment') do
      response(200, 'successful') do
        let(:user_id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  def setup_response_metadata(example)
    example.metadata[:response][:content] = {
      'application/json' => {
        example: JSON.parse(response.body, symbolize_names: true)
      }
    }
  end

  def set_user_and_id_params(user_id, id)
    let(:user_id) { user_id }
    let(:id) { id }
  end

  path '/api/users/{user_id}/appointments/{id}' do
    parameter name: 'user_id', in: :path, type: :string, description: 'user_id'
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show appointment') do
      response(200, 'successful') do
        set_user_and_id_params('123', '123')
        after { |example| setup_response_metadata(example) }
        run_test!
      end
    end

    patch('update appointment') do
      response(200, 'successful') do
        set_user_and_id_params('123', '123')
        after { |example| setup_response_metadata(example) }
        run_test!
      end
    end

    put('update appointment') do
      response(200, 'successful') do
        set_user_and_id_params('123', '123')
        after { |example| setup_response_metadata(example) }
        run_test!
      end
    end

    delete('delete appointment') do
      response(200, 'successful') do
        set_user_and_id_params('123', '123')
        after { |example| setup_response_metadata(example) }
        run_test!
      end
    end
  end
end

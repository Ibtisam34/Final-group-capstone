require 'swagger_helper'

RSpec.describe 'api/doctors', type: :request do
  path '/api/doctors' do
    get('list doctors') do
      response(200, 'successful') do
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

    post('create doctor') do
      response(200, 'successful') do
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

  path '/api/doctors/{id}' do
    parameter name: 'id', in: :path, type: :string, description: 'id'

    let(:id) { '123' }

    after do |example|
      example.metadata[:response][:content] = {
        'application/json' => {
          example: JSON.parse(response.body, symbolize_names: true)
        }
      }
    end

    get('show doctor') do
      response(200, 'successful')
      run_test!
    end

    patch('update doctor') do
      response(200, 'successful')
      run_test!
    end

    put('update doctor') do
      response(200, 'successful')
      run_test!
    end

    delete('delete doctor') do
      response(200, 'successful')
      run_test!
    end
  end
end

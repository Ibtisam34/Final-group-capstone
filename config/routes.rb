Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # devise_for :users, defaults: { format: :json }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "users#index"

  namespace :api do
    devise_for :users, path: '', path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      registration: 'signup'
    },
    controllers: {
      sessions: 'api/users/sessions',
      registrations: 'api/users/registrations'
    }
   
    resources :users, only: [:index, :show] do
      resources :appointments, only: [:index, :show, :create, :update, :destroy]
    end 
    resources :doctors, only: [:index, :show, :create, :update, :destroy]     
  end
end

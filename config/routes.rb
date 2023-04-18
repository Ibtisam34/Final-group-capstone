Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # devise_for :users, defaults: { format: :json }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "users#index"
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }
  get '/member-data', to: 'members#show'
  namespace :api do
    resources :appointments, only: [:index, :show, :create, :update, :destroy]
    resources :doctors, only: [:index, :show, :create, :update, :destroy]     
  end
end

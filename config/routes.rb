Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      resources :users, only:[:index, :create, :show]
      resources :doctors, only: [:index, :show,:new, :create, :update, :destroy] 
      resources :appointments, only: [:index, :show,:new, :create, :update, :destroy]
    end
  end
end

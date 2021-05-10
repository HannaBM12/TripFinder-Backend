Rails.application.routes.draw do
  resources :trips
  resources :attractions
  resources :categories
  resources :clients

  namespace :api do
    namespace :v1 do
      resources :client, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


Rails.application.routes.draw do
  resources :trips
  resources :attractions
  resources :categories
  get "/history", to: "trips#client_trip_history"

  resources :clients, only: [:create]
  post "/login", to: "clients#login"
  get "/autologin", to: "clients#autologin"
  patch "/profile", to: "clients#profile"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

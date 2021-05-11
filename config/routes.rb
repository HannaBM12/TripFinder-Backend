Rails.application.routes.draw do
  resources :trips
  resources :attractions
  resources :categories

  resources :clients, only: [:create, :index, :show]
  post "/login", to: "clients#login"
  get "/autologin", to: "clients#autologin"
  patch "/profile", to: "clients#profile"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "/items" => "items#index"
  post "/items" => "items#create"
  get "/items/:id" => "items#show"
  post "/users" => "users#create"
  get "/users" => "users#index"
  get "/users/current" => "users#show"
  # get "/users/:id" => "users#show"
  post "/sessions" => "sessions#create"
  get "/favorites" => "favorites#index"
  post "/favorites" => "favorites#create"
  delete "/favorites/:id" => "favorites#destroy"
  # Defines the root path route ("/")
  # root "posts#index"
end

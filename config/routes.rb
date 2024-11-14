Rails.application.routes.draw do
  resources :restaurants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "/restaurants/new", to: "restaurants#create", as: new_restaurant
  get "/restaurants", to: "restaurants#index", as:restaurants
  get "/restaurants/:id", to: "restaurants#show", as:restaurants
  post  "/restaurants", to: "restaurants#create", as:restaurants
  patch "/restaurants/:id", to: "restaurants#update", as:update_restaurant
  delete "/restaurants/:id!", to: "restaurants#delete"
  post "/restaurants/:id", to: "restaurants#create_reviews"

  # Defines the root path route ("/")
  # root "posts#index"
end

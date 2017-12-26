Rails.application.routes.draw do
  root "mytours#home"
  post "/rate" , to: "rater#create", as: "rate"
  get "login", to: "sessions#new"
  get "/books", to: "bookings#book"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  resources :users
  resources :mytours
  resources :bookings
  resources :reviews, only: [:create, :destroy]
  resources :admins
end

Rails.application.routes.draw do
  root "mytours#home"
  get "mytours", to: "mytours#index"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "search", to: "searches#search"
  get "searchresult", to: "mytours#search"
  resources :users
  resources :mytours
  resources :bookings
  resources :reviews
end

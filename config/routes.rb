Rails.application.routes.draw do
  root "mytours#home"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  resources :users
  resources :admins do
    get "delete"
  end
  get "list_admin", to: "admins#list_admin"
  get "list_business", to: "admins#list_business"
  get "list_user", to: "admins#list_user"
end

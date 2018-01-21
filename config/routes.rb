Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, controllers: {registrations: "registrations"}
  resources :admins do
    get "delete"
    get "booking"
  end
  get "list_admin", to: "admins#list_admin"
  get "list_user", to: "admins#list_user"
  resources :tours do
    get "delete"
  end
  root "mytours#home"
  post "/rate" , to: "rater#create", as: "rate"
  get "/booked", to: "bookings#booked"
  resources :users
  resources :mytours
  resources :bookings do
    get "delete"
  end
  resources :reviews, only: [:create, :destroy]
  resources :admins
end

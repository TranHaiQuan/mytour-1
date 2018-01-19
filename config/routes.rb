Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, controllers: {registrations: "registrations"}
  root "tours#index"
  resources :admins do
    get "delete"
    get "booking"
  end
  resources :books
  get "list_admin", to: "admins#list_admin"
  get "list_user", to: "admins#list_user"
  resources :tours do
    get "delete"
  end
end

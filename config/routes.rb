Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"}
  root "mytours#home"
  resources :admins do
    get "delete"
  end
  get "list_admin", to: "admins#list_admin"
  get "list_user", to: "admins#list_user"
end

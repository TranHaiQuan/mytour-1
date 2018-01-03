Rails.application.routes.draw do
  get "mytours/home"

  root "mytours#home"
end

Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'user/registrations'
  }
  get "home/index"
  root "home#index"
end

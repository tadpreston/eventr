Rails.application.routes.draw do
  get '/auth/auth0/callback' => 'auth0#callback'
  get '/auth/failure' => 'auth0#failure'
  get '/auth/logout' => 'auth0#logout'

  get 'profile', to: 'profile#show'
  patch 'profile', to: 'profile#update'
  get 'profile/edit', to: 'profile#edit'

  get "home/index"
  root "home#index"
end

Rails.application.routes.draw do
  get '/auth/auth0/callback' => 'auth0#callback'
  get '/auth/failure' => 'auth0#failure'
  get '/auth/logout' => 'auth0#logout'

  get 'profile', to: 'profile#show'
  get 'profile/edit', to: 'profile#edit'
  put 'profile', to: 'profile#update'

  get "home/index"
  root "home#index"
end

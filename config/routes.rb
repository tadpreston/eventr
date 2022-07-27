require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  get '/auth/auth0/callback' => 'auth0#callback'
  get '/auth/failure' => 'auth0#failure'
  get '/auth/logout' => 'auth0#logout'

  get 'profile', to: 'profile#show'
  patch 'profile', to: 'profile#update'
  get 'profile/edit', to: 'profile#edit'

  get 'voter_uploads', to: 'voter_uploads#new'
  post 'voter_uploads', to: 'voter_uploads#create'

  get "home/index"
  root "home#index"
end

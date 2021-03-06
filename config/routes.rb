Rails.application.routes.draw do
  resources :message_users
  resources :friends
  get 'rooms/show'

  resources :messages

  resources :users
  root to: 'visitors#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
  	
  mount ActionCable.server => '/cable'
end

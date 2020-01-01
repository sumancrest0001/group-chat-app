Rails.application.routes.draw do
  root 'chatrooms#index'
  get '/signup', to: 'user#new'
  post '/signup', to: 'user#create'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  resources :messages
end

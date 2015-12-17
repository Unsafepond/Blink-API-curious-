Rails.application.routes.draw do
  root 'welcome#index'

  get "/auth/twitch", as: "login"

  get "/auth/twitch/callback", to: "sessions#create"

  get "/logout", to: "sessions#destroy", as: "logout"

  resources :stream, param: :stream_name, only: [:show]
  resources :user, param: :username, only: [:show]
  resources :channels, param: :channel_name, only: [:show]
  
end

Rails.application.routes.draw do
  root 'welcome#index'

  get "/auth/twitch", as: "login"

  get "/auth/twitch/callback", to: "sessions#create"

  get "/logout", to: "sessions#destroy", as: "logout"
end

require 'omniauth-twitch/lib/omniauth/twitch'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitch, ENV['twitch_client_id'], ENV['twitch_client_secret'], scope: 'user_read user_follows_edit channel_editor user_subscriptions chat_login'
end
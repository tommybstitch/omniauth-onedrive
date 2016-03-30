require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Onedrive < OmniAuth::Strategies::OAuth2

      # Options
      option :name, 'onedrive'
      option :client_options, {
        :site => 'https://login.live.com',
        :api => 'https://login.live.com',
        :authorize_url => 'https://login.live.com/oauth20_authorize.srf',
        :token_url => 'https://login.live.com/oauth20_token.srf'
      }

    end
  end
end

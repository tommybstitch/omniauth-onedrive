require 'omniauth/strategies/oauth2'
require 'open-uri'
require 'uri'

module OmniAuth
  module Strategies
    # Based on https://dev.onedrive.com/auth/msa_oauth.htm
    class Onedrive < OmniAuth::Strategies::OAuth2
      # Options
      option :name, 'onedrive'
      option :authorize_options, [:scope]
      option :client_options, {
        :site => 'https://login.live.com',
        :authorize_url => 'https://login.live.com/oauth20_authorize.srf',
        :token_url => 'https://login.live.com/oauth20_token.srf' }

      uid { raw_info['id'] }

      info do
        {
          :id => raw_info['id'],
          :email => raw_info['emails']['preferred'],
          :name => raw_info['name']
        }
      end

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('https://apis.live.net/v5.0/me').parsed
      end

      def callback_url
        Rails.logger.info "*************"
        Rails.logger.info options[:redirect_uri]
        options[:redirect_uri] || (full_host + script_name + callback_path)
      end
    end
  end
end

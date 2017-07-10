require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class ReCharge < OmniAuth::Strategies::OAuth2
      option :name, "recharge"
      option :client_options, {
        site: "https://shopifysubscriptions.com",
        authorize_url: "/install",
      }

      # For future references, if/when recharge actually returns some useful
      # data.
      def raw_info
        @raw_info ||= access_token.params
      end
    end
  end
end

OmniAuth.config.add_camelization "recharge", "ReCharge"

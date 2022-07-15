# frozen_string_literal: true

module Auth0
  class Jwks
    def self.keys
      new.jwks
    end

    def jwks
      Rails.cache.fetch "auth0_jwt_keys", expires_in: 12.hours do
        fetch_jwks
      end
    end

    def clear_cache
      Rails.cache.delete "auth0_jwt_keys"
    end

    private

    def fetch_jwks
      keys.map do |key|
        key.each_with_object({}) { |(k, v), memo| memo[k.to_sym] = v }
      end
    end

    def keys
      keys = HTTParty.get(config_uri)
      keys["keys"]
    end

    def config_uri
      "https://#{ENV['AUTH0_DOMAIN']}/.well-known/jwks.json"
    end
  end
end

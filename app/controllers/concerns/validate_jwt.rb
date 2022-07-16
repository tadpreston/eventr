module ValidateJwt
  extend ActiveSupport::Concern

  private

  def validate_token
    JWT.decode(session[:id_token], nil, true, validate_options)
  rescue JWT::DecodeError
    nil
  end

  def validate_options
    {
      algorithms: ["RS256"],
      jwks: { keys: keys },
    }
  end

  def keys
    @keys ||= Auth0::Jwks.keys
  end

  def token_uid
    validate_token.first["sub"].split("|")[1]
  end
end

class Auth0Controller < ApplicationController
  def callback
    user_info = UserInfo.new(request.env["omniauth.auth"])
    User.find_or_create(user_info)

    session[:id_token] = user_info.id_token

    redirect_to root_url
  end

  def failure
    @error_msg = request.params['message']
  end

  def logout
    reset_session
    redirect_to logout_url, allow_other_host: true
  end

  private

  AUTH0_CONFIG = Rails.application.config.auth0

  def logout_url

    request_params = {
      returnTo: root_url,
      client_id: Rails.application.config.auth0['auth0_client_id']
    }

    URI::HTTPS.build(host: AUTH0_CONFIG['auth0_domain'], path: '/v2/logout', query: request_params.to_query).to_s
  end
end

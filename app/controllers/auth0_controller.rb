class Auth0Controller < ApplicationController
  def callback
    auth_info = request.env["omniauth.auth"]
    session[:userinfo] = auth_info["extra"]["raw_info"]

    redirect_to root_url
  end

  def failure
    @error_msg = request.params['message']
  end

  def logout
  end
end

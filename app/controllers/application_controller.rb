class ApplicationController < ActionController::Base
  include ValidateJwt

  def current_user
    @current_user ||= User.find_by(uid: user_id)
  end
  helper_method :current_user

  def user_logged_in?
    current_user
  end
  helper_method :user_logged_in?

  private

  def user_id
    token_uid if validate_token
  end
end

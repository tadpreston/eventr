class ApplicationController < ActionController::Base
  include ValidateJwt
  include Pundit::Authorization

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

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

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_back(fallback_location: root_path)
  end
end

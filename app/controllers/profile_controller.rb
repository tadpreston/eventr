class ProfileController < ApplicationController
  before_action :authorize_access
  before_action :set_user

  def show
  end

  def edit
  end

  def update
  end

  private

  def set_user
    @user = current_user
  end

  def authorize_access
    redirect_to root_path unless current_user
  end
end

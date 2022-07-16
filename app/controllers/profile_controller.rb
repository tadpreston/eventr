class ProfileController < ApplicationController
  before_action :authorize_access
  before_action :set_user

  def show
  end

  def edit
  end

  def update
    if params[:user][:uid] == current_user.uid
      @user.update!(user_params)
      flash[:notice] = "Profile successfully updated!"
      redirect_to profile_path
    end
  end

  private

  def set_user
    @user = current_user
  end

  def authorize_access
    redirect_to root_path unless current_user
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end

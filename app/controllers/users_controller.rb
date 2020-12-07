class UsersController < ApplicationController
  def create
    user = User.create(user_create_params)
    respond_with(user)
  end

  def update
    user = User.find_by!(username: params[:id])
    user.update(user_update_params)
    respond_with(user)
  end

  private

  def user_create_params
    params.require(:user).permit(:username, :height, :weight)
  end

  def user_update_params
    params.require(:user).permit(:height, :weight)
  end
end

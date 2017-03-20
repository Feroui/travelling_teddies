class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
    @user = current_user
    redirect_to root_path
  end

  def edit
  end

  def update
    current_user.update(user_params)
    redirect_to user_path(current_user)
  end

  def destroy
    current_user.destroy
    redirect_to root_path
  end

  def dashboard
  end

  private

  def user_params
    params.require(:user).permit(:username, :description, :photo, :email, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end

end

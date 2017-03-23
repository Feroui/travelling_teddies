class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  skip_before_action :authenticate_user!, only: :backpacker

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

  def backpacker
  end

  private

  def user_params
    params.require(:user).permit(:name, :description, :email, :password, photos: [])
  end

  def set_user
    @user = User.find(params[:id])
  end

end

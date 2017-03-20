class TeddiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @teddies = Teddy.all
  end

  def show
    @teddy = Teddy.find(params[:id])
    authorize @teddy
    @stages = policy_scope(Stage).order(created_at: :desc)
  end

  def new
    @teddy = Teddy.new
  end

  def create
    @teddy = Teddy.new(user_params)
    @teddy.user = @user
    @teddy.save
  end

  private

  def user_params
    params.require(:teddy).permit(:name, :description, :valid)
  end

  def get_current_user
    @user = current_user
  end
end

class TeddiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @teddies = policy_scope(Teddy).order(created_at: :desc)
    @stages = Stage.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@stages) do |stage, marker|
      marker.lat stage.latitude
      marker.lng stage.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
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
    @teddy = Teddy.new(teddy_params)
    @teddy.user = @user
    @teddy.save
  end

  private

  def teddy_params
    params.require(:teddy).permit(:name, :description, :valid, photos: [])
  end

  def get_current_user
    @user = current_user
  end
end

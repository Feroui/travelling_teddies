class TeddiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @teddies_all = policy_scope(Teddy).order(created_at: :desc)

    # @last_stages = []
    # @teddies_all.each do |teddy|
    #   @last_stages << teddy.stages.last
    # end

    # @searched_stages = []
    # @last_stages.each do |stage|
    #   if stage.adress == params[:address]
    #     @searched_stages << stage
    #   end
    # end

#################
    @last_stages = Stage.joins("JOIN (SELECT teddy_id, MAX(created_at) AS created_at FROM stages GROUP BY teddy_id) stages2 ON stages.teddy_id = stages2.teddy_id AND stages.created_at = stages2.created_at")

    if params[:address].present?
      @last_stages = @last_stages.near(params[:address])
    end

###############


    # @teddies = []
    # @searched_stages.each do |last_stage|
    #   @teddies << Teddy.find(last_stage.teddy_id)
    # end

    @teddies = Teddy.where(id: @last_stages.map(&:teddy_id))
    @stages = @last_stages.where.not(latitude: nil, longitude: nil)

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

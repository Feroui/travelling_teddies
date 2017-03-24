class TeddiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :validate_code, :backpacker]

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
    names = []
    Teddy.all.each { |t| names << t.name }
    if params[:address].in?(names)
      ted = Teddy.where(name: params[:address]).first
      redirect_to teddy_path(ted)
    else
      @last_stages = Stage.joins("JOIN (SELECT teddy_id, MAX(created_at) AS created_at FROM stages GROUP BY teddy_id) stages2 ON stages.teddy_id = stages2.teddy_id AND stages.created_at = stages2.created_at")

      if params[:address].present?
        @last_stages = @last_stages.near(params[:address], 300)
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
        marker.picture({
                    :url => ActionController::Base.helpers.asset_path("teddypin.png"),
                    :width   => 34,
                    :height  => 48
                   })
        marker.infowindow "<img src='http://lorempixel.com/200/200/cats' class='avatar-large'/>
              <br>
              <p>#{stage.teddy.name} is in #{stage.adress}!</p>
              <em><a href=\"#{teddy_path(stage.teddy)}\">See more</a></em>"
        # marker.infowindow render_to_string(partial: "/stages/map_box", locals: { stage: stage })
      end
    end
  end

  def show
    @teddy = Teddy.find(params[:id])
    authorize @teddy
    # @stages = policy_scope(Stage).order(created_at: :desc)

    @stages = @teddy.stages.where.not(latitude: nil, longitude: nil).order(:date)
    @last_stage = @teddy.stages.where.not(latitude: nil, longitude: nil).order(:date).last

    @hash = Gmaps4rails.build_markers(@stages) do |stage, marker|
      marker.lat stage.latitude
      marker.lng stage.longitude
    end
  end

  def new
    @teddy = Teddy.new
    authorize @teddy
  end

  def create
    @teddy = Teddy.new(teddy_params)
    @teddy.user = current_user
    authorize @teddy
    @teddy.save
    redirect_to dashboard_path
  end

  def backpacker

  end

  def validate_code
    @teddy = Teddy.find_by code: params[:code]
    @stage = Stage.new
    authorize(@teddy || Teddy.new)
    respond_to do |format|
        format.js do
          if @teddy
           @authorized = true
          end
        end
      end
  end

  private

  def teddy_params
    params.require(:teddy).permit(:name, :description, :gender, :origin, :personality, :valid, photos: [])
  end

  def get_current_user
    @user = current_user
  end

end

class StagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_stage, only: [:show, :edit, :update, :destroy]


  def show
  end

  def new
    authorize @stage
  end

  def create
    authorize @stage
    #@stage = Stage.new(stage_params)
      # if @stage.save
    #   respond_to do |format|
    #     format.html {redirect_to teddy_path(@teddy)}
    #     format.js
    #   end
    # else
    #   respond_to do |format|
    #     format.html {render 'stage-form' }
    #     format.js
    #   end
    # end
  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  def set_stage
    @stage = Stage.find(params[:id])
    authorize @stage
  end

  def stage_params
    params.require(:stage).permit(:backpacker_name, :backpacker_description)
  end
end

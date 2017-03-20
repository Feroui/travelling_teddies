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
end

class StagesController < ApplicationController
  before_action :set_stage, only: [:show, :edit, :update, :destroy]

  def index
    @stages = policy_scope(Stage).order(created_at: :desc)
  end

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
  end
end

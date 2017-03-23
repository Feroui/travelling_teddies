require "rest-client"
require "json"

class StagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_stage, only: [:show, :edit, :update, :destroy]


  def show
    @teddy = Teddy.find(params[:teddy_id])
    response = RestClient.get "https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&indexpageids=1&exintro=&explaintext=&titles=Vientiane"
    wiki = JSON.parse(response)
    pageid = wiki["query"]["pageids"][0]
    @desc = wiki["query"]["pages"][pageid]["extract"]
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

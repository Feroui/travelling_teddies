require "rest-client"
require "json"

class StagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :create]
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

    @teddy = Teddy.find_by(code: params[:code])
    @stage = Stage.new(stage_params)
    authorize @stage
    @stage.teddy = @teddy
      if @stage.save
      respond_to do |format|
        format.html {redirect_to teddy_path(@teddy)}
        format.js
      end
    else
      puts "*****************************************************"
      p @stage.errors.messages
      respond_to do |format|
        format.html {render 'teddies/backpacker' }
        format.js
      end
    end
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
    params.require(:stage).permit(:backpacker_name, :backpacker_description, :date,
      :content, :adress, :backpacker_origin, :backpacker_photo, :backpacker_email, :crush, photos: [])
  end
end

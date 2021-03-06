require "rest-client"
require "json"
require 'uri'

class StagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :create]
  before_action :set_stage, only: [:show, :edit, :update, :destroy]


  def show
    @teddy = Teddy.find(params[:teddy_id])

    # WIKIPEDIA
    if @stage.city.nil?
      country = @stage.country.encode('iso-8859-1')
      urcountry = URI.escape country
      url = "https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&indexpageids=1&exintro=&explaintext=&titles=#{urcountry}"
    else
      city = @stage.city.encode('iso-8859-1')
      urcity = URI.escape city
      url = "https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&indexpageids=1&exintro=&explaintext=&titles=#{urcity}"
    end
    response = RestClient.get url
    wiki = JSON.parse(response)
    pageid = wiki["query"]["pageids"][0]
    @desc = wiki["query"]["pages"][pageid]["extract"]

    # WEATHER
    url = "api.openweathermap.org/data/2.5/weather?lat=#{@stage.latitude}&lon=#{@stage.longitude}&units=metric&APPID=b5c01f34a240956a248db8b6c65f723c"
    response = RestClient.get url
    weather_api = JSON.parse(response)
    @weather = weather_api["weather"][0]["main"]
    @temp = weather_api["main"]["temp"]
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

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @stages = Stage.near('Hanoi', 2000)

    @hash = Gmaps4rails.build_markers(@stages) do |stage, marker|
      marker.lat stage.latitude
      marker.lng stage.longitude
      # marker.infowindow render_to_string(partial: "/pages/map_box", locals: { stage: stage })
    end

    teddies = Teddy.all.sample(3)
    @teddy_1 = teddies[0]
    @teddy_2 = teddies[1]
    @teddy_3 = teddies[2]
  end

  def gmaps4rails_marker_picture
     {
  :picture => 'https://d30y9cdsu7xlg0.cloudfront.net/png/5373-200.png',          # string,  mandatory
  :width =>  32,          # integer, mandatory
  :height => 32,          # integer, mandatory
  }
  end
end

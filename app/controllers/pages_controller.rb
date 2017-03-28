class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about]

  def home
    last_stages = Stage.joins("JOIN (SELECT teddy_id, MAX(created_at) AS created_at FROM stages GROUP BY teddy_id) stages2 ON stages.teddy_id = stages2.teddy_id AND stages.created_at = stages2.created_at")
    @stages = last_stages.sample(10)

    @hash = Gmaps4rails.build_markers(@stages) do |stage, marker|
      marker.lat stage.latitude
      marker.lng stage.longitude
      marker.picture({
                  :url => ActionController::Base.helpers.asset_path("teddypin.png"),
                  :width   => 34,
                  :height  => 48,
                 })
      marker.class()
      marker.infowindow "<img src='http://lorempixel.com/200/200/cats' class='avatar-large'/>
            <br>
            <p>#{stage.teddy.name} is in #{stage.adress}!</p>
            <em><a href=\"#{teddy_path(stage.teddy)}\">See more</a></em>"
      # marker.infowindow render_to_string(partial: "/pages/map_box", locals: { stage: stage })
    end

    teddies = Teddy.all.sample(3)
    @teddy_1 = teddies[0]
    @teddy_2 = teddies[1]
    @teddy_3 = teddies[2]
  end

  def about

  end
end

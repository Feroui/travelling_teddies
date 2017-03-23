class FollowersController < ApplicationController


  def create
    @teddy = Teddy.find(params[:teddy_id])
    @follower = Follower.new(user: current_user, teddy: @teddy)
    authorize @follower
    @follower.save
    redirect_to dashboard_path
  end

  def destroy
    @follower = current_user.followers.find(params[:id])
    authorize @follower
    @follower.destroy
    redirect_to dashboard_path
  end
end

class FollowsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    current_user.follow(@user)
    redirect_back fallback_location: root_path
  end

  def destroy
    @user = User.find(params[:user_id])
    current_user.stop_following(@user)
    redirect_back fallback_location: root_path
  end

end
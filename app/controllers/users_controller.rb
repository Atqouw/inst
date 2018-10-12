class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_posts = @user.posts
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to
    end
  end

  private

  def user_params
    params.fetch(:user).permit(
        :avatar, :username
    )
  end

end


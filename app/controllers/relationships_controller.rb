class RelationshipsController < ApplicationController
  before_action :ensure_correct_user, only: [:create, :destroy]
  def create
    current_user.follow(params[:user_id])
    redirect_to request.referer
  end
  def destroy
    current_user.unfollow(params[:user_id])
    redirect_to request.referer
  end
  def followings
    user = User.find(params[:user_id])
    @users = user.followings
  end
  def followers
    user = User.find(params[:user_id])
    @users = user.followers
  end

  private
  def ensure_correct_user
    @user = User.find(params[:user_id])
    if @user == current_user
      redirect_to request.referer
    end
  end
end

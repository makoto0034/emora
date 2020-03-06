class UsersController < ApplicationController
  def show
    @posts=Post.where(user_id:params[:id])
    @user = User.find(params[:id])
    if params[:id] == current_user.id
      @followings = current_user.followings
      @followers = current_user.followers
    else
      user = User.find(params[:id])
      @followings = user.followings
      @followers = user.followers
    end
  end

  def update
    @user=User.find(current_user.id)
    @user.profile = params[:profile]
    if params[:image]
       current_user.avatar.attach(params[:image])
    end
    @user.save
    redirect_to(user_path(current_user))
  end
end

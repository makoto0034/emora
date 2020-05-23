class UsersController < ApplicationController
  def show
    per = 10

    @posts=Post.where(user_id:params[:id]).page(params[:page]).per(per)
    @user = User.find(params[:id])
    if params[:id] == current_user.id
      @followings = current_user.followings.page(params[:page]).per(per)
      @followers = current_user.followers.page(params[:page]).per(per)
      @postFavorites = PostFavorite.where(user_id:current_user.id).page(params[:page]).per(per)
    else
      user = User.find(params[:id])
      @followings = user.followings.page(params[:page]).per(per)
      @followers = user.followers.page(params[:page]).per(per)
      @postFavorites = PostFavorite.where(user_id:params[:id]).page(params[:page]).per(per)
    end

    otherUserPer = 5

    if params[:userName]
      @otherUsers = User.search(params[:userName]).page(params[:page]).per(otherUserPer)
      respond_to do |format|
        format.html
        format.js
      end
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def image_update
    current_user.avatar.attach(params[:image])
    redirect_to(edit_user_path(current_user))
  end

  def update
    @user=User.find(current_user.id)
    @user.profile = params[:profile]
    @user.save
    redirect_to(user_path(current_user))
  end

end

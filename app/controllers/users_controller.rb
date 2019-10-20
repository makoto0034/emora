class UsersController < ApplicationController
  def show
    @posts=Post.where(user_id:current_user)
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

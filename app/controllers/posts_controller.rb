class PostsController < ApplicationController
  def create
    @post=Post.new(content:params[:content],message_board_id:params[:id],user_id:current_user.id)

      if @post.save
        flash[:success] = '投稿しました'
        redirect_to(message_boards_talks_path(params[:id],category_id:params[:category_id]))
      else
        flash[:alert] = '空文字は投稿できません'
        redirect_to(message_boards_talks_path(params[:id],category_id:params[:category_id]))
      end
    end
end

class PostsController < ApplicationController
  def create
    @post=Post.new(
      content:params[:content],
      message_board_id:params[:id],
      user_id:current_user.id
    )
    @post.save!
    redirect_to(message_boards_talks_path(params[:id],category_id:params[:category_id]))
  end
end

class PostsController < ApplicationController
  def create
    @post=Post.new(
      content:params[:content],
      message_board_id:params[:id],
      user:current_user
    )
    @post.save!
    redirect_to(message_boards_talks_path(params[:id]))
  end
end

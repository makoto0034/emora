class MessageBoardsTalksController < ApplicationController
  def index
    @posts=Post.where(message_board_id:params[:id])
  end
end

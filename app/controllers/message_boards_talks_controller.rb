class MessageBoardsTalksController < ApplicationController
  def index
    @posts=Post.where(message_board_id:params[:id])
    @message_board = MessageBoard.find(params[:id])
  end
end

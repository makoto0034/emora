class MessageBoardsTalksController < ApplicationController
  def index
    @posts = Post.where(message_board_id:params[:id]).order(created_at: :desc)
    @message_board = MessageBoard.find(params[:id])
    @message_boards = MessageBoard.where(category_id:@message_board.category.id).limit(20)
  end
end

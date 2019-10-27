class MessageBoardsController < ApplicationController
  def index

    if params[:category_id].present?
      @message_boards=MessageBoard.where(category_id:params[:category_id])
    else
      @message_boards=MessageBoard.all
    end
    @categories=Category.all
  end

  def new
    @categories=Category.all
  end

  def create
    @message_board=MessageBoard.new(
      name:params[:name],
      detail:params[:detail],
      category_id:params[:category_id]
    )
    @message_board.save
    redirect_to(message_boards_talks_path(@message_board.id))
  end
end

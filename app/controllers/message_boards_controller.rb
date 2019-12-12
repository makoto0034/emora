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
    if @message_board.save
      redirect_to(message_boards_talks_path(@message_board.id))
    else
      flash[:alert] = "掲示板の名前は１文字以上入力してください"
      redirect_to(new_message_board_path)
    end
  end
end

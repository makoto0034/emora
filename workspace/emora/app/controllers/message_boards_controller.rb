class MessageBoardsController < ApplicationController
  def index

    if params[:category_id]
      @message_boards = MessageBoard.where(category_id:params[:category_id]).order(created_at: :"DESC")
      @category = Category.find(params[:category_id])
    else
      @message_boards = MessageBoard.all.order(created_at: :"DESC")
    end
    @categories = Category.all
  end


  def new
    @categories = Category.all
  end


  def create
    @message_board = MessageBoard.new(
      name:params[:name],
      detail:params[:detail],
      category_id:params[:category_id],
      user_id:current_user.id
    )
    if @message_board.save
      redirect_to(message_boards_talks_path(@message_board.id))
    else
      flash[:alert] = "掲示板の名前は１文字以上入力してください"
      redirect_to(new_message_board_path)
    end
  end


end

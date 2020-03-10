class PostFavoritesController < ApplicationController
  def create
    if PostFavorite.create(user_id:current_user.id,post_id:params[:post_id])
      flash[:success] = "お気に入りに追加しました"
      redirect_to message_boards_talks_path(params[:message_board_id])
    else
      flash[:alert] = "お気に入りに追加できませんでした"
      redirect_to message_boards_talks_path(params[:message_board_id])
    end
  end

  def destroy
    postFavorite = PostFavorite.find_by(user_id:current_user.id,post_id:params[:post_id])
    if postFavorite.delete
      flash[:success] = "お気に入りを削除しました"
      redirect_to message_boards_talks_path(params[:message_board_id])
    else
      flash[:alert] = "お気に入りを削除できませんでした"
      redirect_to message_boards_talks_path(params[:message_board_id])
    end
  end
end

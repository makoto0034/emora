class OrderHistoriesController < ApplicationController
  def index
    @order_histories = OrderHistory.where(user_id:current_user.id)
  end

  def order_history_items_finder(order_history_id)
    return @order_history_items = OrderHistoryItem.where(order_history_id:order_history_id)
  end

  helper_method :order_history_items_finder


end

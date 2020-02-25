class OrderHistoryItem < ApplicationRecord
  belongs_to :order_history
  belongs_to :product
end

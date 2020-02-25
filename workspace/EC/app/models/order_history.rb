class OrderHistory < ApplicationRecord
  belongs_to :user
  has_many :order_history_items
end

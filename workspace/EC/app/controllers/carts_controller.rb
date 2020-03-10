class CartsController < ApplicationController
  def index
    @cart = current_user.cart
    @cart_items = CartItem.where(cart_id:@cart.id)
    @sum = 0
    @cart_items.each do |cart_items|
      @sum += cart_items.product.price*cart_items.quantity
    end
  end


end

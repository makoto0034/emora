class CartItemsController < ApplicationController
  def new
  end

  def create
    if user_signed_in?
      @cart = Cart.find(current_user.id)
      @cart_item = CartItem.new(quantity:params[:product_count],product_id:params[:id],cart_id:@cart.id)
      @cart_item.save!
      redirect_to(carts_path)
    else
      redirect_to(new_user_registration_path)
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to(carts_path)
  end
end

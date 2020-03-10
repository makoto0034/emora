class ChargesController < ApplicationController
  def new
    @cart = current_user.cart
    @cart_items = CartItem.where(cart_id:@cart.id)
    @sum_amount = 0
    @cart_items.each do |cart_items|
      @sum_amount += cart_items.product.price*cart_items.quantity
    end
  end

  def create

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: params[:amount],
      description: 'Rails Stripe customer',
      currency: 'jpy',
    })

    @cart = current_user.cart
    @cart_items = CartItem.where(cart_id:@cart.id)
    @sum_amount = 0
    @cart_items.each do |cart_items|
      @sum_amount += cart_items.product.price*cart_items.quantity
    end

    @order_history = OrderHistory.create!(
      user_id:current_user.id,
      sum:@sum_amount,
      status:"発送待ち"
    )

    @cart_items.each do |cart_item|
      OrderHistoryItem.create!(
        order_history_id:@order_history.id,
        product_id:cart_item.product.id,
        quantity:cart_item.quantity
      )
    end
    @cart_items.destroy_all
    redirect_to(order_histories_path)

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end

  def update
    @cart = current_user.cart
    @cart_items = CartItem.where(cart_id:@cart.id)
    @item = @cart_items.select{|ci| ci.product_id == params[:produt_id].to_i}.first
    if @item
      @item.quantity = params[:product_count]
      @item.save
    end
  end

  def params_int(model_params)
    return model_params.to_i
  end
end

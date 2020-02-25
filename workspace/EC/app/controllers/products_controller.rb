class ProductsController < ApplicationController
  def index
    if params[:category_id].present?
      @products = Product.where(category_id:params[:category_id])
      @category = Category.find(params[:category_id])
    elsif params[:productName]
      @products = Product.search(params[:productName])
    else
      @products = Product.all
    end
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
  end
end

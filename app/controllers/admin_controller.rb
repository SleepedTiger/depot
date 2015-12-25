class AdminController < ApplicationController
  def index
    @total_orders = Order.count
    @cart = Cart.find(session[:cart_id])
  end
end

class FfsController < ApplicationController

  skip_before_action :authorize


  def index
    @product = Product.includes(:comments).find(params[:id])
    @cart = Cart.none
  end

end



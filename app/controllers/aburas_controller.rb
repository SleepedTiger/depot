class AburasController < ApplicationController
  skip_before_action :authorize

  def index
    @cart = Cart.none
  end
  
end

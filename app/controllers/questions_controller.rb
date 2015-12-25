class QuestionsController < ApplicationController
  skip_before_action :authorize

  def index
    @cart = Cart.find(session[:cart_id])
  end

end

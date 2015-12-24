class CommentsController < ApplicationController
  skip_before_filter :authorize
  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    if @comment.save
      flash[:notice] = "作成できました！"
      redirect_to product_path(@product)
    else
      render :template => "products/show"
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @comment = @product.comments.find(params[:id])
    @comment.destroy
    redirect_to :products
  end

  private
  def comment_params
    params.require(:comment).permit(
      :name,
      :score,
      :body
      )
  end
end

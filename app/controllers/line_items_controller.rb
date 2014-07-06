class LineItemsController < ApplicationController

  def create
    @cart = current_cart
    @line_item = @cart.add_product(params[:line_item][:product_id], params[:line_item][:quantity])
    if @line_item.save
      redirect_to cart_path, notice: "Product has been added to your cart."
    else
      redirect_to :back
      flash[:error] = "Something went wrong"
    end
  end

  def destroy
    @line_item = LineItem.find params[:id]
    @line_item.destroy
    redirect_to :back, notice: "Product has been removed from your cart."
  end

  private

  def line_item_params
    params.require(:line_item).permit!
  end

end

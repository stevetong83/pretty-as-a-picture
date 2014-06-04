class LineItemsController < ApplicationController

  def create
    @cart = current_cart
    binding.pry
    @line_item = @cart.line_items.add_product line_item_params
    if @line_item.save
      redirect_to cart_path, notice: "Item has been added to your cart"
    else
      redirect_to :back
      flash[:error] = "Something went wrong"
    end
  end

  def destroy

  end

  private

  def line_item_params
    params.require(:line_item).permit!
  end

end

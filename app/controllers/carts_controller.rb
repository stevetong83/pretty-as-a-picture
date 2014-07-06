class CartsController < ApplicationController

  def index
    @cart = current_cart
    @line_items = @cart.line_items
  end

  def clear
    @cart = current_cart
    @cart.line_items.destroy_all
    redirect_to :back, notice: "Cart has been emptied."
  end
end

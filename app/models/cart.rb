class Cart < ActiveRecord::Base

  belongs_to :user
  has_many :line_items

  def total
    line_items.inject(0) {|sum, n| n.product.price * n.quantity + sum}
  end

  def add_product(product_id, quantity)
    quantity = quantity.to_i
    current_item = line_items.find_by_product_id(product_id)
    if current_item
      current_item.quantity += quantity
      current_item
    else
      line_items.build(product_id: product_id, quantity: quantity)
    end
    
  end
end

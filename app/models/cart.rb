class Cart < ActiveRecord::Base

  belongs_to :user
  has_many :line_items

  def add_product(line_item_params)
    binding.pry
    current_item = line_items.find_by_product_id(product_id)
    current_item = if current_item
      current_item.quantity += 1
    else
      line_items.build(:product_id => product_id)
    end
    
  end
end

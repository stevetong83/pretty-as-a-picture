class LineItem < ActiveRecord::Base

  belongs_to :product
  belongs_to :cart

  validates :product, :cart, presence: true
  validates :product_id, uniqueness: { scope: :cart_id }
end

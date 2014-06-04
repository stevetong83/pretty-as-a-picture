lineclass LineItem < ActiveRecord::Base

  belongs_to :product
  belongs_to :cart
  belongs_to :order

  validates :product, :cart, presence: true
  validates :product_id, uniqueness: { scope: :cart_id }
end

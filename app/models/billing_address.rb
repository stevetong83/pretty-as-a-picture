class BillingAddress < Address
  has_many :orders
  accepts_nested_attributes_for :orders
end

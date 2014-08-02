class Address < ActiveRecord::Base
  has_many :orders

  validates :first_name, :last_name, :address, :city, :state, :zip, presence: true
end

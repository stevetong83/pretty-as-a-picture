class Product < ActiveRecord::Base

  has_many :images
  has_many :line_items

  validate :title, :price, :quantity_available, presence: true
  validates :price, :quantity_available, numericality: true
  
end


class Image < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  belongs_to :product

  validates :image, :product, presence: true
end

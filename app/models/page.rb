class Page < ActiveRecord::Base

  validates :page, uniqueness: true

end

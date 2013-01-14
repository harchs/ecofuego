class WasteClass < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :wastes

  validates :name, :presence => true
end

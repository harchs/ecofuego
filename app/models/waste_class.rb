class WasteClass < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :wastes, dependent: :destroy

  validates :name, :presence => true

  acts_as_paranoid
end

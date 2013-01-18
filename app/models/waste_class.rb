class WasteClass < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :wastes, dependent: :destroy, :conditions => ["wastes.deleted_at IS NULL"] 

  validates :name, :presence => true

  acts_as_paranoid

  class << self
  	def weight_accumulated(waste_class)
  		joins(:wastes).where("waste_classes.id = #{waste_class.id}")
  	end
  end
end

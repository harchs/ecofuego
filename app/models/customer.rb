class Customer < ActiveRecord::Base
  attr_accessible :activity, :addres, :name, :phone

  has_many :wastes

  validates :name, :presence => true
  validates :activity, :presence => true
  validates :activity, :presence => true
end

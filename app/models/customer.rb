class Customer < ActiveRecord::Base
  attr_accessible :activity, :addres, :name, :phone

  has_many :wastes, dependent: :destroy

  validates :name, :presence => true
  validates :activity, :presence => true
  validates :activity, :presence => true

  # acts_as_paranoid
end

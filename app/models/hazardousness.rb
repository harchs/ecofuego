class Hazardousness < ActiveRecord::Base
  attr_accessible :caution, :classification, :code, :name

  validates :code, :presence => true
  validates :name, :presence => true
  validates :classification, :presence => true

  has_many :wastes, dependent: :destroy

  acts_as_paranoid
end

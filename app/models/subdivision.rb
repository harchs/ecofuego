class Subdivision < ActiveRecord::Base

  attr_accessible :code, :shelve_id, :in_use
  
  belongs_to :shelve
  has_one :waste

  acts_as_paranoid

  class << self
  	def free(shelve)
      where('in_use = false AND shelve_id = ?', shelve.id)
    end
  end

end

class Subdivision < ActiveRecord::Base

  attr_accessible :code, :shelve_id, :in_use
  
  belongs_to :shelve
  has_one :waste

  acts_as_paranoid

  class << self
  	def free()
      where('in_use = false') 
    end
    def of_shelve(shelve)
    	where('shelve_id = ?', shelve.id)
    end
  end

end

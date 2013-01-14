class Subdivision < ActiveRecord::Base

  attr_accessible :code, :shelve_id
  
  belongs_to :shelve
  has_one :waste

end

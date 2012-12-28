class Residue < ActiveRecord::Base
	belongs_to :shelve
  attr_accessible :shelve_id, :dangerousness, :lot, :name
  before_save :add_cod_shelve

  private
  def add_cod_shelve
    self.cod_shelve = Shelve.find(shelve_id).cod_shelve
  end

end

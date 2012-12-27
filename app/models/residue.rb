class Residue < ActiveRecord::Base
	belongs_to :shelve, foreign_key: "cod_shelve"
  attr_accessible :cod_shelve, :dangerousness, :lot, :name
end

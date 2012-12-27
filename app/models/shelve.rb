class Shelve < ActiveRecord::Base
	has_many :residues, foreign_key: "cod_shelve"
  attr_accessible :cod_shelve
end

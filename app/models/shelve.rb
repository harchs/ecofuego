class Shelve < ActiveRecord::Base
	
	attr_accessible :cod_shelve, :levels, :divisions, :sub_divisions
	attr_accessor :levels, :divisions, :sub_divisions

  has_many :wastes
  has_many :subdivisions

  validates :cod_shelve, :presence => true
  validates :levels, :presence => true
  validates :divisions, :presence => true
  validates :sub_divisions, :presence => true

  after_save :create_subdivision



	def create_subdivision
		cod_shelves = []
		r_levels = 1...(self.levels.to_i + 1)
		r_division = 1...(self.divisions.to_i + 1)
		r_subdivision = 1...(self.sub_divisions.to_i + 1)

		r_levels.each do |level|
			r_division.each do |division|
				r_subdivision.each do |subdivision|
					cod_shelves.push(self.cod_shelve+" "+level.to_s+"."+division.to_s+"."+subdivision.to_s)
				end
			end
		end

		cod_shelves.each do |new_shelve|
      self.subdivisions.create!(code: new_shelve)
		end
	end

end

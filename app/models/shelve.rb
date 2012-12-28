class Shelve < ActiveRecord::Base
	has_many :residues
	attr_accessor :shelve_id, :levels, :divisions, :subdivisions
  attr_accessible :cod_shelve

  class << self
  	def create_shelve(params)
  		cod_shelves = []
			r_levels = 1...(params[:levels].to_i + 1)
			r_division = 1...(params[:divisions].to_i + 1)
			r_subdivision = 1...(params[:subdivisions].to_i + 1)

  		r_levels.each do |level|
				r_division.each do |division|
					r_subdivision.each do |subdivision|
						cod_shelves.push(params[:shelve_id]+" "+level.to_s+"."+division.to_s+"."+subdivision.to_s)
					end
				end
			end

			cod_shelves.each do |new_shelve|
				Shelve.create!(cod_shelve: new_shelve)
			end

  	end
  end
end

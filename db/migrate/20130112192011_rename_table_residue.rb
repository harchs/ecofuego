class RenameTableResidue < ActiveRecord::Migration
	def self.up
      rename_table :residues, :wastes
  end 
  def self.down
      rename_table :wastes, :residues
  end
end

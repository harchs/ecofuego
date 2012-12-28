class AddShelveIdToResidue < ActiveRecord::Migration
  def change
    add_column :residues, :shelve_id, :integer
  end
end

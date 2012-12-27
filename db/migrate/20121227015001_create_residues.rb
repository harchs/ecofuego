class CreateResidues < ActiveRecord::Migration
  def change
    create_table :residues do |t|
      t.string :cod_shelve
      t.string :dangerousness
      t.string :name
      t.string :lot

      t.timestamps
    end
  end
end

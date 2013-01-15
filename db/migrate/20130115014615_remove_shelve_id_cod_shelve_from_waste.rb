class RemoveShelveIdCodShelveFromWaste < ActiveRecord::Migration
  def up
    remove_column :wastes, :shelve_id
    remove_column :wastes, :cod_shelve
  end

  def down
    add_column :wastes, :cod_shelve, :string
    add_column :wastes, :shelve_id, :integer
  end
end

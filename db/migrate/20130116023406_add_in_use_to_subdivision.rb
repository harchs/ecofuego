class AddInUseToSubdivision < ActiveRecord::Migration
  def change
    add_column :subdivisions, :in_use, :boolean, default: false
  end
end

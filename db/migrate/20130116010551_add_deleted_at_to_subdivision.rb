class AddDeletedAtToSubdivision < ActiveRecord::Migration
  def change
    add_column :subdivisions, :deleted_at, :datetime
  end
end

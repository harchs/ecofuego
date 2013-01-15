class AddSubdivisionIdToWaste < ActiveRecord::Migration
  def change
    add_column :wastes, :subdivision_id, :integer
  end
end

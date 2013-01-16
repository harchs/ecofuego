class AddDeletedAtToWaste < ActiveRecord::Migration
  def change
    add_column :wastes, :deleted_at, :datetime
  end
end

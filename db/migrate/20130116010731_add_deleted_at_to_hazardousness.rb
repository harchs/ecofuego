class AddDeletedAtToHazardousness < ActiveRecord::Migration
  def change
    add_column :hazardousnesses, :deleted_at, :datetime
  end
end

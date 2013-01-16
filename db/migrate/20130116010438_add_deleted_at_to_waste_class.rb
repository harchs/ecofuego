class AddDeletedAtToWasteClass < ActiveRecord::Migration
  def change
    add_column :waste_classes, :deleted_at, :datetime
  end
end

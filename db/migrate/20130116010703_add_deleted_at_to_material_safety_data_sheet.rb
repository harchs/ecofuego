class AddDeletedAtToMaterialSafetyDataSheet < ActiveRecord::Migration
  def change
    add_column :material_safety_data_sheets, :deleted_at, :datetime
  end
end

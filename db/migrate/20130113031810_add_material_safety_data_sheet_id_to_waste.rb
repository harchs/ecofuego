class AddMaterialSafetyDataSheetIdToWaste < ActiveRecord::Migration
  def change
    add_column :wastes, :material_safety_data_sheet_id, :integer
  end
end

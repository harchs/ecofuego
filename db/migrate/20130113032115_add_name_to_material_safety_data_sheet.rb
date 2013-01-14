class AddNameToMaterialSafetyDataSheet < ActiveRecord::Migration
  def change
    add_column :material_safety_data_sheets, :name, :string
  end
end

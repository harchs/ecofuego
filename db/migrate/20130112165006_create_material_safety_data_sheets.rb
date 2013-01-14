class CreateMaterialSafetyDataSheets < ActiveRecord::Migration
  def change
    create_table :material_safety_data_sheets do |t|
      t.string :description

      t.timestamps
    end
  end
end

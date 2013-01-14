class AddAttachmentDataSheetToMaterialSafetyDataSheets < ActiveRecord::Migration
  def self.up
    change_table :material_safety_data_sheets do |t|
      t.attachment :data_sheet
    end
  end

  def self.down
    drop_attached_file :material_safety_data_sheets, :data_sheet
  end
end

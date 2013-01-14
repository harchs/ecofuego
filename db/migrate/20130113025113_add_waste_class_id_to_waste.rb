class AddWasteClassIdToWaste < ActiveRecord::Migration
  def change
    add_column :wastes, :waste_class_id, :integer
  end
end

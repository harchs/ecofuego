class CreateWasteClasses < ActiveRecord::Migration
  def change
    create_table :waste_classes do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end

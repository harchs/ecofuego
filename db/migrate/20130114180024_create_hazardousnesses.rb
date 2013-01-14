class CreateHazardousnesses < ActiveRecord::Migration
  def change
    create_table :hazardousnesses do |t|
      t.string :code
      t.string :name
      t.text :classification
      t.text :caution

      t.timestamps
    end
  end
end

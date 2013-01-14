class CreateSubdivisions < ActiveRecord::Migration
  def change
    create_table :subdivisions do |t|
      t.integer :shelve_id
      t.string :code

      t.timestamps
    end
  end
end

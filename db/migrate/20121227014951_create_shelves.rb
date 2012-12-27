class CreateShelves < ActiveRecord::Migration
  def change
    create_table :shelves do |t|
      t.string :cod_shelve

      t.timestamps
    end
  end
end

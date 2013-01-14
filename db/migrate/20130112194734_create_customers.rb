class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :activity
      t.string :addres
      t.string :phone

      t.timestamps
    end
  end
end

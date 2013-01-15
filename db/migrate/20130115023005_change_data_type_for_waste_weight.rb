class ChangeDataTypeForWasteWeight < ActiveRecord::Migration
  def self.up
    change_table :wastes do |t|
      t.change :weight, :float
    end
  end
 
  def self.down
    change_table :wastes do |t|
      t.change :weight, :integer
    end
  end
end

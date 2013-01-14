class RemoveDangerousnessOfWaste < ActiveRecord::Migration
  def up
  	remove_column :wastes, :dangerousness
  end

  def down
  end
end

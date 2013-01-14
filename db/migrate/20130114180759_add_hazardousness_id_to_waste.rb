class AddHazardousnessIdToWaste < ActiveRecord::Migration
  def change
    add_column :wastes, :hazardousness_id, :integer
  end
end

class AddWeigthAndObservationsToWaste < ActiveRecord::Migration
  def change
    add_column :wastes, :weight, :integer
    add_column :wastes, :observations, :text
  end
end

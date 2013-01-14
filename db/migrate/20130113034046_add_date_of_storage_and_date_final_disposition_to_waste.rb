class AddDateOfStorageAndDateFinalDispositionToWaste < ActiveRecord::Migration
  def change
    add_column :wastes, :date_of_storage, :date
    add_column :wastes, :date_final_disposition, :date
  end
end

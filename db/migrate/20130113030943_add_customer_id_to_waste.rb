class AddCustomerIdToWaste < ActiveRecord::Migration
  def change
    add_column :wastes, :customer_id, :integer
  end
end

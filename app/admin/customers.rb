ActiveAdmin.register Customer do

	menu :priority => 8

  filter :name
  filter :activity
  filter :phone

  index :paginate => 25 do
    column "NAME", :sortable => :name do |customer|
      customer.name
    end
    column "ACTIVITY" do |customer|
      customer.activity
    end
    column "ADDRESS" do |customer|
      customer.addres
    end
    column "PHONE" do |customer|
      customer.phone
    end
    default_actions
  end

  show :title => :name do 
    panel "Customer Details" do
      attributes_table_for customer do
        row("name")
        row("activity")
        row("addres")
        row("phone")
      end
      active_admin_comments
    end
  end
  
end

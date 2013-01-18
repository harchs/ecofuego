ActiveAdmin.register WasteClass do

	menu :priority => 4
  
	filter :name

  index :paginate => 25 do
    column "NAME", :sortable => :name do |waste_class|
      waste_class.name
    end
    column "DESCRIPTION", :sortable => :lot do |waste_class|
      waste_class.description
    end
    default_actions
  end

  show :title => :name do 
    panel "Waste Class Details" do
      attributes_table_for waste_class do
        row("name") 
        row("description") 
      end
      active_admin_comments
    end
  end

  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :description
    end
    f.buttons
  end
  
end

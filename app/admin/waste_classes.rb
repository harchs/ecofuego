ActiveAdmin.register WasteClass do

	menu :priority => 3
  
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
  
end

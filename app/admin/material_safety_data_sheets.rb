ActiveAdmin.register MaterialSafetyDataSheet do

	menu :priority => 5

	filter :name

  form :html => { :multipart => true } do |f|
    f.inputs  do
      f.input :name
      f.input :description
      f.input :data_sheet, :as => :file
    end
    f.buttons
  end

  index :paginate => 25 do
    column "NAME", :sortable => :name do |material_safety_data_sheet|
      material_safety_data_sheet.name
    end
    column "DESCRIPTION" do |material_safety_data_sheet|
      material_safety_data_sheet.description
    end
    column "DATA SHEET" do |material_safety_data_sheet|
      link_to material_safety_data_sheet.name, material_safety_data_sheet.data_sheet.url, :class => "iframe"
    end
    default_actions
  end

  show :title => :name do 
    panel "Material Safety DataSheet Details" do
      attributes_table_for material_safety_data_sheet do
        row("name")
        row("description")
        row("DATA SHEET (pdf)") do
          if material_safety_data_sheet.data_sheet.present?
            link_to material_safety_data_sheet.name, material_safety_data_sheet.data_sheet.url, :class => "iframe"
          end
        end
      end
      active_admin_comments
    end
  end
  
end
ActiveAdmin.register MaterialSafetyDataSheet do

	menu :priority => 5

	filter :description

  form :html => { :multipart => true } do |f|
    f.inputs  do
      f.input :description
      f.input :data_sheet, :as => :file
    end
    f.buttons
  end

  index :paginate => 25 do
    column "NAME", :sortable => :name do |materialsafetydatasheet|
      materialsafetydatasheet.name
    end
    column "DESCRIPTION" do |materialsafetydatasheet|
      materialsafetydatasheet.description
    end
    column "PDF" do |materialsafetydatasheet|
      link_to materialsafetydatasheet.name, materialsafetydatasheet.data_sheet.url, :class => "iframe"
    end
    default_actions
  end
  
end

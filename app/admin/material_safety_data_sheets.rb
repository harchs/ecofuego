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
  
end

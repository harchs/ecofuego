ActiveAdmin.register Waste do

  menu :priority => 2

  filter :name
  filter :dangerousness
  filter :date_of_storage
  filter :date_final_disposition

	form do |f|
    f.inputs "Details" do
    	f.input :name
      f.input :hazardousness_id, :as => :select, :collection => Hazardousness.all.map {|h| [h.name, h.id]}, :label => "Hazardousness"
      f.input :lot 
      f.input :waste_class_id, :as => :select, :collection => WasteClass.all.map {|w| [w.name, w.id]}, :label => "Waste Class"
      f.input :material_safety_data_sheet_id, :as => :select, :collection => MaterialSafetyDataSheet.all.map {|ds| [ds.name, ds.id]}, :label => "Material Safety Data Sheet"
      f.input :date_of_storage, :as => :string, :input_html => {:class => "hasDatetimePicker"}
      f.input :date_final_disposition, :as => :string, :input_html => {:class => "hasDatetimePicker"}
      f.input :customer_id, :as => :select, :collection => Customer.all.map {|c| [c.name, c.id]}, :label => "Customer"
      f.input :shelve_id, :as => :select, :collection => Subdivision.all.map {|s| [s.code, s.id]}, :label => "Storing in"
    end
    f.buttons
  end

  index :paginate => 25 do
    column "NAME", :sortable => :name do |waste|
      waste.name
    end
    column "LOT", :sortable => :lot do |waste|
      waste.lot
    end
    column "DATE OF STORAGE", :sortable => :date_of_storage do |waste|
      waste.date_of_storage
    end
    column "DATE FINAL DISPOSITION", :sortable => :date_final_disposition do |waste| 
      waste.date_final_disposition
    end
    default_actions
  end
  
end

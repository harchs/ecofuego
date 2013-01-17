ActiveAdmin.register Waste do

  menu :priority => 2

  filter :name
  #filter :hazardousness, :as => :select, :collection => Hazardousness.all.map {|h| [h.name, h.id]}
  filter :date_of_storage
  filter :date_final_disposition

	form do |f|
    f.inputs "Details" do
    	f.input :name
      f.input :hazardousness_id, :as => :select, :collection => Hazardousness.all.map {|h| [h.name, h.id]}, :label => "Hazardousness"
      f.input :lot, :input_html => {:style => "width:100px;"}
      f.input :weight, :input_html => {:style => "width:71px;"}
      f.input :waste_class_id, :as => :select, :collection => WasteClass.all.map {|w| [w.name, w.id]}, :label => "Waste Class"
      f.input :material_safety_data_sheet_id, :as => :select, :collection => MaterialSafetyDataSheet.all.map {|ds| [ds.name, ds.id]}, :label => "Material Safety Data Sheet"
      f.input :date_of_storage, :as => :string, :input_html => {:class => "hasDatetimePicker custom_date", :style => "width:71px; padding-right: 27px; background: #fff url('/assets/active_admin/datepicker/datepicker-input-icon.png') no-repeat 100% 7px"}
      f.input :date_final_disposition, :as => :string, :input_html => {:class => "hasDatetimePicker custom_date", :style => "width:71px; padding-right: 27px; background: #fff url('/assets/active_admin/datepicker/datepicker-input-icon.png') no-repeat 100% 7px"}
      f.input :customer_id, :as => :select, :collection => Customer.all.map {|c| [c.name, c.id]}, :label => "Customer"
      f.input :subdivision_id, :as => :select, :collection => Subdivision.all.map {|s| [s.code, s.id]}, :label => "Storing in"
      f.input :observations
    end
    f.buttons
  end

  index :paginate => 25 do
    column "STORED IN" do |waste|
      waste.subdivision.code
    end
    column "NAME", :sortable => :name do |waste|
      waste.name
    end
    column "HAZARDOUSNESS" do |waste|
      waste.hazardousness.present? ? waste.hazardousness.name : ''
    end
    column "WASTE CLASS", :sortable => :lot do |waste|
      waste.waste_class.name
    end
    column "DATA SHEET", :sortable => :lot do |waste|
      if waste.material_safety_data_sheet.data_sheet.present?
        link_to waste.material_safety_data_sheet.data_sheet.name, waste.material_safety_data_sheet.data_sheet.url, :class => "iframe"
      end
    end
    column "DATE OF STORAGE", :sortable => :date_of_storage do |waste|
      waste.date_of_storage
    end
    column "DATE FINAL DISPOSITION", :sortable => :date_final_disposition do |waste| 
      waste.date_final_disposition
    end
    default_actions
  end

  show :title => :name do 
    panel "Waste Details" do
      attributes_table_for waste do
        row("STORED IN") do
          waste.subdivision.code
        end
        row("name")
        row("hazardousness")
        row("lot")
        row("weight")
        row("waste_class")
        row("material_safety_data_sheet")
        row("date_of_storage")
        row("date_final_disposition")
        row("observations")
      end
      active_admin_comments
    end
  end
  
end

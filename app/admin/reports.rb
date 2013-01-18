ActiveAdmin.register_page "Reports" do
  menu :priority => 2, :label => "Reports"
  content :title => "reports" do

    columns do
    
      column do
        panel "WEIGHT OF WASTES BY CLASS" do
          table_for WasteClass.all do
            column("Class")   {|waste_class| waste_class.name}                                    
            column("Weight")  {|waste_class| WasteClass.weight_accumulated(waste_class).sum(:weight)}
          end
        end
      end

      column do
        panel "WEIGHT OF WASTES BY NAME" do
          table_for Waste.select("DISTINCT name") do
            column("Name")   {|waste| waste.name}                                    
            column("Weight") {|waste| Waste.group_by_name(waste.name).sum(:weight)}
          end
        end
      end

    
    end
  end
end

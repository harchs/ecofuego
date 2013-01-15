ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }
  content :title => proc{ I18n.t("active_admin.dashboard") } do
   
    columns do

      column do
        panel "NEAR DATE FINAL OF DISPOSITION" do
          table_for Waste.near_to_date_final_of_disposition do
            column("Waste")   {|waste| waste.name}                                    
            column("Weight")   {|waste| waste.weight}
            column("Stored in")   {|waste| waste.subdivision.code}                                    
            column("Remaining days")   {|waste| waste.remaining_days}                                   
          end
        end
      end

      column do
        panel "ACTIVE SHELVES" do
          table_for Shelve.all do
            column("Code")   {|shelve| shelve.cod_shelve}                                    
            column("Total of subdivision")   {|shelve| shelve.subdivisions.count}
          end
        end
      end
    end


    columns do
      column do
        panel "CREMATIONS BY DAY" do
          div do
            text_node %{<iframe src="https://rpm.newrelic.com/public/charts/6VooNO2hKWB" width="100%" height="400" scrolling="no" frameborder="no"></iframe>}.html_safe
          end
        end
      end
    end

     

  end 

end

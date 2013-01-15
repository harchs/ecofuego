ActiveAdmin.register Shelve do

  menu :priority => 4

  filter :cod_shelve

  form do |f|
    f.inputs "Details" do
      f.input :cod_shelve, :label => "Shelve ID"
      f.input :levels
      f.input :divisions
      f.input :sub_divisions
    end
    f.buttons
  end

  index :paginate => 25 do
    column "CODE", :sortable => :name do |shelve|
      shelve.cod_shelve
    end
    column "SUBDIVISIONS" do |shelve|
      shelve.subdivisions.count
    end
    default_actions
  end

  show :title => :cod_shelve do 
    panel "Shelve Details" do
      attributes_table_for shelve do
        row("cod_shelve") 
        row("sub_divisions") do
          shelve.subdivisions.count
        end
      end
      active_admin_comments
    end
  end

end

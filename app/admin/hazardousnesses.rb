ActiveAdmin.register Hazardousness do
  menu :priority => 7

  filter :code
  filter :name
  filter :classification

  index :paginate => 25 do
    column "CODE", :sortable => :name do |hazardousness|
      hazardousness.code
    end
    column "NAME", :sortable => :name do |hazardousness|
      hazardousness.name
    end
    column "CLASSIFICATION" do |hazardousness|
      hazardousness.classification
    end
    column "CAUTION" do |hazardousness|
      hazardousness.caution
    end
    default_actions
  end

  show :title => :name do 
    panel "Hazardousness Details" do
      attributes_table_for hazardousness do
        row("code")
        row("name")
        row("classification")
        row("caution")
      end
      active_admin_comments
    end
  end

  form do |f|
    f.inputs "Details" do
      f.input :code
      f.input :name
      f.input :classification
      f.input :caution
    end
    f.buttons
  end


end

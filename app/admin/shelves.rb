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
end

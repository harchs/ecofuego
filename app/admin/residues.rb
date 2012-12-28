ActiveAdmin.register Residue do

	form do |f|
    f.inputs "Details" do
      f.input :shelve_id, :as => :select, :collection => Shelve.all.map {|s| [s.cod_shelve, s.id]}, :label => "Shelve COD"
      f.input :dangerousness
      f.input :lot 
      f.input :name
    end
    f.buttons
  end
  
end

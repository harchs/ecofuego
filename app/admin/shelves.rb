ActiveAdmin.register Shelve do

  controller do
    def create
      shelve = Shelve.create_shelve(params[:shelve])
      redirect_to admin_shelves_path, :notice => "Shelve was successfully created."
    end
  end

  form do |f|
    f.inputs "Details" do
      f.input :shelve_id, :label => "Shelve ID"
      f.input :levels
      f.input :divisions
      f.input :subdivisions
    end
    f.buttons
  end
end

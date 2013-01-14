class MaterialSafetyDataSheet < ActiveRecord::Base
  attr_accessible :description, :data_sheet, :name
  has_attached_file :data_sheet,
    :storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :dropbox_options => {
    	:path => proc { |style| "#{style}/#{id}_#{data_sheet.original_filename}" }
    }

  has_many :wastes

  validates :description, :presence => true
  validates :data_sheet, :presence => true

end

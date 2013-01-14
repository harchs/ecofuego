class Waste < ActiveRecord::Base

  attr_accessible :shelve_id, :dangerousness, :lot, :name, :waste_class_id, 
                  :material_safety_data_sheet_id, :date_of_storage, :date_final_disposition, :customer_id

	belongs_to :subdivision
  belongs_to :material_safety_data_sheet
  belongs_to :waste_class
  belongs_to :customer
  belongs_to :hazardousness

  before_save :add_cod_subdivision

  validates :shelve_id, :presence => true
  validates :name, :presence => true
  validates :dangerousness, :presence => true
  validates :lot, :presence => true
  validates :waste_class_id, :presence => true
  validates :material_safety_data_sheet_id, :presence => true
  validates :date_of_storage, :presence => true
  validates :date_final_disposition, :presence => true
  validates :customer_id, :presence => true

  private
  def add_cod_subdivision
    self.cod_shelve = Subdivision.find(shelve_id).code
  end

end

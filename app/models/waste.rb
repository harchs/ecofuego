class Waste < ActiveRecord::Base

  attr_accessible :hazardousness_id, :lot, :name, :waste_class_id, 
                  :material_safety_data_sheet_id, :date_of_storage, 
                  :date_final_disposition, :customer_id, :subdivision_id,
                  :weight, :observations

	belongs_to :subdivision
  belongs_to :material_safety_data_sheet
  belongs_to :waste_class
  belongs_to :customer
  belongs_to :hazardousness

  validates :name, :presence => true
  validates :hazardousness_id, :presence => true
  validates :lot, :presence => true
  validates :waste_class_id, :presence => true
  validates :material_safety_data_sheet_id, :presence => true
  validates :date_of_storage, :presence => true
  validates :date_final_disposition, :presence => true
  validates :customer_id, :presence => true
  validates :subdivision_id, :presence => true
  validates :weight, :presence => true, :numericality => { :greater_than_or_equal_to => 0.1 }

end

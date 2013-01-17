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

  after_save :subdivision_in_use
  before_destroy :liberate_subdivision

  acts_as_paranoid

  class << self
    def near_to_date_final_of_disposition
      where('date_final_disposition BETWEEN ? AND ?', Date.today, Date.today + 15)
    end

    def incinerated(period)
      only_deleted.select("date_trunc('#{period}', deleted_at) as period, sum(weight) as weight").group('period')
    end
  end

  def remaining_days
    (self.date_final_disposition.to_date - Date.today).to_i
  end


  private

  def subdivision_in_use
    self.subdivision.update_attributes(in_use: true)
  end

  def liberate_subdivision
    self.subdivision.update_attributes(in_use: false)
  end 

end

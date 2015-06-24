class WorkOrder < ActiveRecord::Base
  belongs_to :technician
  has_one :address
end

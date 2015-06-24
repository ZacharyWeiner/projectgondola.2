class Technician < ActiveRecord::Base
  belongs_to :company_info
  has_one :company_info
end

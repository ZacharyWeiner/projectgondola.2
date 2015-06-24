class Address < ActiveRecord::Base
  belongs_to :company_info
  belongs_to :emergency_contact
  belongs_to :work_order
end

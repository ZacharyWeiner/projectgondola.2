class CompanyInfo < ActiveRecord::Base
  has_many :technicians
  has_one :address
end

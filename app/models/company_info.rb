class CompanyInfo < ActiveRecord::Base
  has_many :technicians
end

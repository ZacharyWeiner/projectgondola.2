ActiveAdmin.register CompanyInfo do
  permit_params :name, :contract_date, :liability_insurance_date, :liability_insurance_company, :liability_insurance_policy_number, :workers_comp_company, :workers_comp_policy_number, :business_registrataion_expiration, :annual_filing_date

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end

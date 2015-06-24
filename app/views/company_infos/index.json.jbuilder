json.array!(@company_infos) do |company_info|
  json.extract! company_info, :id, :name, :contract_date, :liability_insurance_date, :liability_insurance_company, :liability_insurance_policy_number, :workers_comp_company, :workers_comp_policy_number, :business_registrataion_expiration, :annual_filing_date
  json.url company_info_url(company_info, format: :json)
end

json.array!(@technicians) do |technician|
  json.extract! technician, :id, :mso_tech_id, :last_background_check, :gchat_id, :is_active, :home_phone, :cell_phone, :last_drug_test, :internal_tech_id, :company_info_id
  json.url technician_url(technician, format: :json)
end

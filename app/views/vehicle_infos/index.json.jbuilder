json.array!(@vehicle_infos) do |vehicle_info|
  json.extract! vehicle_info, :id, :year, :make, :model, :registration_state, :color, :plate, :registration_id, :registration_expiration, :insurance_company, :insurance_company, :company_info_id
  json.url vehicle_info_url(vehicle_info, format: :json)
end

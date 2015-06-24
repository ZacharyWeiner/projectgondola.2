json.array!(@addresses) do |address|
  json.extract! address, :id, :street_number, :street_name, :unit, :address_type, :city, :state, :zip, :full_street_address, :map_grid, :latitude, :longitude, :company_info_id, :emergency_contact_id, :work_order_id
  json.url address_url(address, format: :json)
end

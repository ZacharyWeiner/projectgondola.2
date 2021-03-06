json.array!(@emergency_contacts) do |emergency_contact|
  json.extract! emergency_contact, :id, :name, :relationship, :phone_number
  json.url emergency_contact_url(emergency_contact, format: :json)
end

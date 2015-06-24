json.array!(@drivers_licesnses) do |drivers_licesnse|
  json.extract! drivers_licesnse, :id, :technician_id, :license_id, :height, :weight, :eye_color, :birthday, :hair_color, :state, :expiration
  json.url drivers_licesnse_url(drivers_licesnse, format: :json)
end

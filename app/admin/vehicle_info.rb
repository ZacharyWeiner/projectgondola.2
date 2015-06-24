ActiveAdmin.register VehicleInfo do
  permit_params :year, :make, :model, :registration_state, :color, :plate, :registration_id, :registration_expiration, :insurance_company, :insurance_company

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

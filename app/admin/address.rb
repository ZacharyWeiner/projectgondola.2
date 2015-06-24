ActiveAdmin.register Address do
  permit_params :street_number, :street_name, :unit, :address_type, :city, :state, :zip, :full_street_address, :map_grid, :latitude, :longitude

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

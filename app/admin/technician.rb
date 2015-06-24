ActiveAdmin.register Technician do
  permit_params :mso_tech_id, :last_background_check, :gchat_id, :is_active, :home_phone, :cell_phone, :last_drug_test, :internal_tech_id

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

ActiveAdmin.register WorkOrderStatus do
  permit_params :partition_id, :jobstatus, :sub_status, :job_status, :status_date, :reason_code, :reason_code_description

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

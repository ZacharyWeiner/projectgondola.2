ActiveAdmin.register WorkOrder do
  permit_params :work_order_uid, :work_order_number, :completed, :slot_start, :slot_end, :priority, :tech_login_id, :previous_fsr_login_id, :job_id, :dwelling_type, :job_type, :job_class, :requirements_list, :privilege_list, :routing_area_code, :routing_area, :account_number, :first_name, :last_name, :home_phone, :call_ahead_number, :customer_id, :cod_amount, :drop_type, :processing_code, :service_code, :equipment_type, :equipment_serial_number

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

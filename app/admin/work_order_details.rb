ActiveAdmin.register WorkOrderDetails do
  permit_params :smsid, :buid, :sms, :contact_phone_number, :business_unit, :versionid, :tzi, :fsruserid, :fsrbuid, :previous_fsr_buid, :dispatcher_id, :key1, :problem_code, :key2, :order_date_time, :due_date_time, :jobtype, :jobclass, :tech_completed, :last_changed, :compliance, :customer_id2, :pricing_category, :pricing_category_description, :campaign_code, :campaign_code_description, :customer_status, :customer_status_description, :customer_info1, :customer_info2, :customer_info3, :customer_info4, :customer_info5, :building_type, :building_type_description, :deliminated_address, :coding_quality, :location_id, :location_info1, :location_info2, :location_info3, :location_info4, :location_info5, :monthly_charge, :job_points, :total_bablace_due, :ordering_operator_id, :contact_name, :contact_phone1, :contact_phone2, :drop_location, :tag_id, :house_status, :quota_group, :quota_area, :detail_text1, :detail_text2, :detail_text3, :detail_text4, :detail_text5, :sms_job_number, :assigning_operator_id, :repeat, :repeat_count, :node_id, :tech_business_unit

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

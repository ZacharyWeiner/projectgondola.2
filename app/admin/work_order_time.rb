ActiveAdmin.register WorkOrderTime do
  permit_params :esitmated_job_duration, :estimated_travel_time, :estimated_wrap_up_duration, :estimated_start, :estimated_wrapup, :actual_job_duration, :actual_travel_duration, :actual_wrap_up_duration, :actual_end_time, :actual_start_time, :actual_completed_time, :standard_job_duration

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

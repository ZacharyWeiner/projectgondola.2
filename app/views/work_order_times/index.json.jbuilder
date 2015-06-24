json.array!(@work_order_times) do |work_order_time|
  json.extract! work_order_time, :id, :esitmated_job_duration, :estimated_travel_time, :estimated_wrap_up_duration, :estimated_start, :estimated_wrapup, :actual_job_duration, :actual_travel_duration, :actual_wrap_up_duration, :actual_end_time, :actual_start_time, :actual_completed_time, :standard_job_duration, :work_order_id
  json.url work_order_time_url(work_order_time, format: :json)
end

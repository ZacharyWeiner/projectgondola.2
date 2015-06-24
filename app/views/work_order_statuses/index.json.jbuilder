json.array!(@work_order_statuses) do |work_order_status|
  json.extract! work_order_status, :id, :partition_id, :jobstatus, :sub_status, :job_status, :status_date, :reason_code, :reason_code_description, :work_order_id
  json.url work_order_status_url(work_order_status, format: :json)
end

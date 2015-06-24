json.array!(@work_orders) do |work_order|
  json.extract! work_order, :id, :work_order_uid, :work_order_number, :completed, :slot_start, :slot_end, :priority, :technician_id, :tech_login_id, :previous_fsr_login_id, :job_id, :dwelling_type, :job_type, :job_class, :requirements_list, :privilege_list, :routing_area_code, :routing_area, :account_number, :first_name, :last_name, :home_phone, :call_ahead_number, :customer_id, :cod_amount, :drop_type, :processing_code, :service_code, :equipment_type, :equipment_serial_number
  json.url work_order_url(work_order, format: :json)
end

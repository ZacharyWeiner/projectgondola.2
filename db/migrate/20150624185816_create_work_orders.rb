class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      t.string :work_order_uid
      t.string :work_order_number
      t.date :completed
      t.datetime :slot_start
      t.datetime :slot_end
      t.integer :priority
      t.references :technician, index: true
      t.string :tech_login_id
      t.string :previous_fsr_login_id
      t.string :job_id
      t.string :dwelling_type
      t.string :job_type
      t.string :job_class
      t.string :requirements_list
      t.string :privilege_list
      t.string :routing_area_code
      t.string :routing_area
      t.string :account_number
      t.string :first_name
      t.string :last_name
      t.string :home_phone
      t.string :call_ahead_number
      t.string :customer_id
      t.string :cod_amount
      t.string :drop_type
      t.string :processing_code
      t.string :service_code
      t.string :equipment_type
      t.string :equipment_serial_number

      t.timestamps
    end
  end
end

class CreateWorkOrderStatuses < ActiveRecord::Migration
  def change
    create_table :work_order_statuses do |t|
      t.string :partition_id
      t.string :jobstatus
      t.string :sub_status
      t.string :job_status
      t.date :status_date
      t.string :reason_code
      t.string :reason_code_description
      t.references :work_order, index: true

      t.timestamps
    end
  end
end

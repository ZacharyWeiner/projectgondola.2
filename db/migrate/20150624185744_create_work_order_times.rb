class CreateWorkOrderTimes < ActiveRecord::Migration
  def change
    create_table :work_order_times do |t|
      t.integer :esitmated_job_duration
      t.integer :estimated_travel_time
      t.integer :estimated_wrap_up_duration
      t.time :estimated_start
      t.time :estimated_wrapup
      t.integer :actual_job_duration
      t.integer :actual_travel_duration
      t.integer :actual_wrap_up_duration
      t.time :actual_end_time
      t.time :actual_start_time
      t.time :actual_completed_time
      t.integer :standard_job_duration
      t.references :work_order, index: true

      t.timestamps
    end
  end
end

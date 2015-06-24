FactoryGirl.define do
  factory :work_order_time do
    esitmated_job_duration 1
estimated_travel_time 1
estimated_wrap_up_duration 1
estimated_start "2015-06-24 18:57:44"
estimated_wrapup "2015-06-24 18:57:44"
actual_job_duration 1
actual_travel_duration 1
actual_wrap_up_duration 1
actual_end_time "2015-06-24 18:57:44"
actual_start_time "2015-06-24 18:57:44"
actual_completed_time "2015-06-24 18:57:44"
standard_job_duration 1
work_order nil
  end

end

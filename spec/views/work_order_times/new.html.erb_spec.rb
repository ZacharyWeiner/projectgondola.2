require 'rails_helper'

RSpec.describe "work_order_times/new", type: :view do
  before(:each) do
    assign(:work_order_time, WorkOrderTime.new(
      :esitmated_job_duration => 1,
      :estimated_travel_time => 1,
      :estimated_wrap_up_duration => 1,
      :actual_job_duration => 1,
      :actual_travel_duration => 1,
      :actual_wrap_up_duration => 1,
      :standard_job_duration => 1,
      :work_order => nil
    ))
  end

  it "renders new work_order_time form" do
    render

    assert_select "form[action=?][method=?]", work_order_times_path, "post" do

      assert_select "input#work_order_time_esitmated_job_duration[name=?]", "work_order_time[esitmated_job_duration]"

      assert_select "input#work_order_time_estimated_travel_time[name=?]", "work_order_time[estimated_travel_time]"

      assert_select "input#work_order_time_estimated_wrap_up_duration[name=?]", "work_order_time[estimated_wrap_up_duration]"

      assert_select "input#work_order_time_actual_job_duration[name=?]", "work_order_time[actual_job_duration]"

      assert_select "input#work_order_time_actual_travel_duration[name=?]", "work_order_time[actual_travel_duration]"

      assert_select "input#work_order_time_actual_wrap_up_duration[name=?]", "work_order_time[actual_wrap_up_duration]"

      assert_select "input#work_order_time_standard_job_duration[name=?]", "work_order_time[standard_job_duration]"

      assert_select "input#work_order_time_work_order_id[name=?]", "work_order_time[work_order_id]"
    end
  end
end

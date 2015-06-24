require 'rails_helper'

RSpec.describe "work_order_times/index", type: :view do
  before(:each) do
    assign(:work_order_times, [
      WorkOrderTime.create!(
        :esitmated_job_duration => 1,
        :estimated_travel_time => 2,
        :estimated_wrap_up_duration => 3,
        :actual_job_duration => 4,
        :actual_travel_duration => 5,
        :actual_wrap_up_duration => 6,
        :standard_job_duration => 7,
        :work_order => nil
      ),
      WorkOrderTime.create!(
        :esitmated_job_duration => 1,
        :estimated_travel_time => 2,
        :estimated_wrap_up_duration => 3,
        :actual_job_duration => 4,
        :actual_travel_duration => 5,
        :actual_wrap_up_duration => 6,
        :standard_job_duration => 7,
        :work_order => nil
      )
    ])
  end

  it "renders a list of work_order_times" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
